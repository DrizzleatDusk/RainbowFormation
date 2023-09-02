unitsize(1cm);
defaultpen(white+fontsize(8pt));
fill(box((-3.5,-3.5), (3.5,3.5)), black);

label("$O$", (-0.2,-0.2));
label("Medium 1", (2.4,1), p=fontsize(9pt));
label("Medium 2", (2.4,-1), p=fontsize(9pt));
draw((-3,0) -- (3,0), white);
draw((0,-2) -- (0,2), white+dashed);
draw((-2.5,2) -- (0,0), white, arrow=MidArrow());
draw((0,0) -- (1.5,-2.5), white, arrow=MidArrow());

draw(arc((0,0), (0,.2), (-2.5,2)), white);
draw(arc((0,0), (0,-.2), (1.5,-2.5)), white);
label("$\theta_1$", (-.15,.4), p=fontsize(9pt));
label("$\theta_2$", (.16,-.5), p=fontsize(9pt));

label("$n_1\sin\theta_1=n_2\sin\theta_2$", (0.2,-3),
     p=fontsize(12pt));