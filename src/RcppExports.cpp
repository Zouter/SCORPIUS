// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// euclidean_distance_rcpp
Rcpp::NumericMatrix euclidean_distance_rcpp(const Rcpp::NumericMatrix& x, const Rcpp::NumericMatrix& y);
RcppExport SEXP SCORPIUS_euclidean_distance_rcpp(SEXP xSEXP, SEXP ySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const Rcpp::NumericMatrix& >::type x(xSEXP);
    Rcpp::traits::input_parameter< const Rcpp::NumericMatrix& >::type y(ySEXP);
    rcpp_result_gen = Rcpp::wrap(euclidean_distance_rcpp(x, y));
    return rcpp_result_gen;
END_RCPP
}
