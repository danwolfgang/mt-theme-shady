package CustomThemePack::ContactForm;

use strict;

#
# Be sure to save the submitted data!
#

sub pre_save {
    my ($cb, $comment, $orig_comment) = @_;
    my $app = MT->instance;
    my $q = $app->{query};
    return if !( $app->can('param') );

    $comment->phone( $q->param('phone') );

    return 1;
}


#
# Display the result on the Comment page
#

sub add_fields {
    my ($eh, $app, $param, $tmpl) = @_;
    return unless UNIVERSAL::isa($tmpl, 'MT::Template');

    _add_field($tmpl, 'Phone', 'phone');
}

sub _add_field {
    # Craft the HTML to insert the fields on the Edit Comment page.
    my ($tmpl, $display_name, $var_name) = @_;
    my $app = MT->instance;

    my $entry_field = $tmpl->getElementById('entry')
        or return $app->error('Cannot get the entry block');

    my $add_field = $tmpl->createElement('app:setting', {
            id    => $var_name,
            label => $display_name,  })
        or return $app->error("Cannot create the $display_name element");
    my $innerHTML = qq{<input name="$var_name" id="$var_name" value="<mt:var name="$var_name" escape="html">" class="width90" />};
    $add_field->innerHTML( $innerHTML );
    $tmpl->insertBefore($add_field, $entry_field)
        or return $app->error('Failed to insertBefore.');
}


#
# These are the tag handlers
#

sub comment_phone {
    my $ctx = shift;
    my $args = shift;
    return _tag_handler($ctx, $args, 'phone');
}

sub _tag_handler {
    my $ctx   = shift;
    my $args  = shift;
    my $field = shift;

    my $comment = $ctx->stash('comment');
    my $text;
    if ($comment->id) {
        my $app = MT->instance;
        $text = $app->param($field);
    } else {
        my $app = MT->instance;
    }
    # To display on the comment preview/response templates
    if (!$text && ($ctx->var('body_class') eq 'mt-comment-confirmation') ) {
        my $app = MT->instance;
        $text = $app->param($field);
    }
    return $text || '';
}

1;

__END__
