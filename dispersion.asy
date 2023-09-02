unitsize(1cm);
defaultpen(white+fontsize(8pt));
fill(box((-6,-5), (4,3)), black);

real r = 2;
real bound = 2.5*r;
real n1 = 1.245;
real n2 = 1.4;
draw(circle((0,0), r), white);
//label("$O$", (-.25,-.2));
//draw((-bound,0)--(bound,0), dashed+white);

int N = 7;
real h; 
pair joint1;
real alpha;
real i;
real angle1;
pair joint2;
real gamma_;
pair joint3;
real theta;
real tmpl2;
real n;
pen p[] = {red, orange, yellow, green, cyan, blue, purple};


for(int nt = 0; nt < N; ++nt){
  	h = 0.7 * r; 
  	n = n1 + nt*(n2-n1)/(N-1);
 	joint1 = (-sqrt(r^2-h^2),h);
 	draw((-bound,h) -- joint1, white);
 	alpha = asin(h/r);
	i = asin(h/r/n);
	angle1 = 2*i - alpha;
	joint2 = r*(cos(angle1), sin(angle1));
	draw(joint1 -- joint2, p[nt]);
	gamma_ = 4*i - alpha;
	joint3 = -r*(cos(gamma_), sin(gamma_));
	draw(joint2 -- joint3, p[nt]);
	theta = 4*i - 2*alpha;
	tmpl2 = 1.5*r;
	draw (joint3 -- (joint3 - tmpl2*(cos(theta), sin(theta))), p[nt]);
}
