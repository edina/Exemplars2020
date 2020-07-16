data {
  int<lower=1> N; // number of categories (i.e. 9)
  int<lower=1> M; // number of repetitions (i.e. 4)
  real<lower=0, upper=100> y[N,M]; // responses (i.e, a 9x4 2D-array)
  real<lower=0, upper=1> x[N]; // values (length 9 1D-array)
}

parameters {
  real<lower=0, upper=1> mu;        // mean of the belief distribution
  real<lower=.01, upper=2> sigma;   // std dev of the belief distribution
  real<lower=1, upper=30> v;        // scaling parameter for the response
  real<lower=.1, upper=10> epsilon; // response noise parameter
}

transformed parameters {
  real<lower=0> phi[N];
  
  // the 9 response strengths are a deterministic transformation
  // of the input values (x), and the 3 parameters: mu, sigma, v.
  // (note to self: this cannot possibly be a good way to code this!)
  for(c in 1:N) {
      phi[c] = v * (1/(sigma * sqrt(2*pi()))) * exp(-(mu-x[c])^2/(2*(sigma^2)));
  }
}

model {
  // priors over the beliefs are uniform over the plausible
  // range; this should be revisited but for now I just want
  // something I can write down
  mu ~ uniform(0,1);
  sigma ~ uniform(.01,2);

  // priors over the response process parameters are similarly
  // uniform; again, I don't really believe this and will need to
  // think about it later on
  v ~ uniform(1, 30);
  epsilon ~ uniform(0, 100);

  // (More notes to self: Can I vectorise this? Would it even
  // matter for stan? Would it be better to define this on the lpdf
  // directly rather than the pdf???)
  for(c in 1:N) {
    for(r in 1:M) {
      // response is a truncated normal with mean phi and standard
      // deviation epsilon; truncation range is 0 to 100
      y[c,r] ~ normal(phi[c], epsilon) T[0,100];
    }
  }
}
