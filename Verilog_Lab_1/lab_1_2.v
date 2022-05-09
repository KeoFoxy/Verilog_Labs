module lab_1_2 (
    input the_stars_converged,
    input be_lucky,
    input be_sharyashim,

    output pass_the_matan);

    assign pass_the_matan = (the_stars_converged & be_lucky) | be_sharyashim;
    
endmodule