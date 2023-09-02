unitsize(1cm);
defaultpen(white+fontsize(8pt));
fill(box((-6,-6), (6,6)), black);

real r = 2;
real bound = 2.5*r;
real n = 1.45;
draw(circle((0,0), r), white);
//label("$O$", (-.25,-.2));
draw((-bound,0)--(bound,0), dashed+white);

real h = 0.7*r;
pair joint1 = (-sqrt(r^2-h^2),h);
draw((-bound,h) -- joint1, white, arrow=MidArrow());
real alpha = asin(h/r);
real i = asin(h/r/n);
real angle1 = 2*i - alpha;
pair joint2 = r*(cos(angle1), sin(angle1));
draw(joint1 -- joint2, white, arrow=MidArrow());
real gamma = 4*i - alpha;
pair joint3 = -r*(cos(gamma), sin(gamma));
draw(joint2 -- joint3, white, arrow=MidArrow());
real theta = 4*i - 2*alpha;
real tmpl1 = r*sin(gamma)/tan(theta) - r*cos(gamma);
pair joint4 = (tmpl1, 0);
draw(joint3 -- joint4, dashed+white);
real tmpl2 = 1.5*r;
draw (joint3 -- (joint3 - tmpl2*(cos(theta), sin(theta))), white, arrow=MidArrow());

real tmpl3 = 1.5;
draw((0,0)--tmpl3*joint1, dashed+white);
draw((0,0)--tmpl3*joint2, dashed+white);
draw((0,0)--tmpl3*joint3, dashed+white);


Label Lalpha1 = Label("$\alpha$", position=MidPoint, align=(-1,.6));
Label Li1 = Label("$i$", position=MidPoint, align=(1,-.5));
Label Li2 = Label("$i$", position=MidPoint, align=1.5W); 
Label Li3 = Label("$i$", position=MidPoint, align=(-1,-.5));
Label Li4 = Label("$i$", position=MidPoint, align=(1,1.2));
Label Li5 = Label("$\beta$", position=MidPoint, align=(-1,-1));
Label Lgamma = Label("$\gamma$", position=MidPoint, align=(-1,-1));
Label Ltheta = Label("$\theta$", position=MidPoint, align=(-1,-.3));
draw(arc(joint1, .3, 180, 180-alpha/pi*180), white, L=Lalpha1);
draw(arc(joint1, .3, -alpha/pi*180, (-alpha+i)/pi*180), white, L=Li1);
draw(arc(joint2, .3, -(pi-2*i+alpha+i)/pi*180, -(pi-2*i+alpha)/pi*180), white, L=Li2);
draw(arc(joint2, .35, -(pi-2*i+alpha)/pi*180, -(pi-2*i+alpha-i)/pi*180), white, L=Li3);
draw(arc(joint3, .35, gamma/pi*180, (gamma-i)/pi*180), white, L=Li4);
draw(arc(joint3, .35, gamma/pi*180-180, gamma/pi*180-180-alpha/pi*180), white, L=Li5);
draw(arc((0,0), .35, 180, 180+gamma/pi*180), white, L=Lgamma);
draw(arc(joint4, .35, 180, 180+theta/pi*180), white, L=Ltheta);