unitsize(1cm);
defaultpen(white+fontsize(8pt));
fill(box((-7,-2), (1,8.5)), black);

real xlength = 6, ylength = 5;
real r = 0.3;
pair eye = (-xlength, 0);
real thetasun = 15/180*pi;
draw((-xlength,0) -- (0, 0), dashed+white);
draw(eye -- (eye+5*(cos(-thetasun),sin(-thetasun))), white+.6pt, arrow=Arrow());
real theta[] = {50, 45, 41, 36, 28};
pen p[] = {red, green, purple};
for (int i = 0; i <5; ++i){
	theta[i] *= pi/180;
}
real ycenter[];
pair ccenter;
for (int i = 0; i <5; ++i){
	ycenter[i] = xlength * tan(theta[i]);
}
draw((0,0) -- (0, ycenter[0]), dashed+white);
real lsun = 2.5, l = 1;
pair sunend, sunstart, lstart, lend;

for (int i = 0; i < 5; ++i){
  	ccenter = (0, ycenter[i]);
	draw(circle(ccenter, r), white);
	sunend = ccenter + r*(-cos(thetasun),sin(thetasun));
  	sunstart = sunend + lsun*(-cos(thetasun),sin(thetasun));
	draw(sunstart -- sunend, white+.6pt, arrow=MidArrow());
    for (int j = 0; j < 3; ++j){
        lstart = ccenter - r*(cos(theta[j+1]), sin(theta[j+1]));
        lend = lstart - l*(cos(theta[j+1]), sin(theta[j+1]));
        draw(lstart -- lend, p[j]);
      	if (j == i-1){
        	draw(lstart-- eye, p[j], arrow=MidArrow());
          	fill(circle(ccenter, r), p[j]+opacity(.6));
        }
 
    }
  	if (i==4){
    	lstart = ccenter - r*(cos(theta[i]), sin(theta[i]));
        lend = lstart - l*(cos(theta[i]), sin(theta[i]));
        draw(lstart -- eye, white, arrow=MidArrow());
      	fill(circle(ccenter, r), white+opacity(.6));
    }
}

label("Eye", eye+(-.2,.2));
label("The direction of sun light", (-4,7.5));