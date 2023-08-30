
#let apply(
    variant: "rose-pine"
) = {
    return  (content) => [
        #import "themes/" + variant + ".typ": theme
        #set page(fill: theme.base,)
        #set text(fill: theme.text,)
        #set table(fill: theme.surface, stroke: theme.highlight.high)
        #set circle(stroke: theme.subtle, fill: theme.overlay)
        #set ellipse(stroke: theme.subtle, fill: theme.overlay)
        #set line(stroke: theme.subtle)
        #set path(stroke: theme.subtle, fill: theme.overlay)
        #set polygon(stroke: theme.subtle, fill: theme.overlay)
        #set rect(stroke: theme.subtle, fill: theme.overlay)
        #set square(stroke: theme.subtle, fill: theme.overlay)
        #show link: it => [
            #set text(fill: theme.iris)
            #it
        ]
        #show ref: it => [
            #set text(fill: theme.foam)
            #it
        ]
        #show footnote: it => [
            #set text(fill: theme.pine)
            #it
        ]
        #content
    ]
}