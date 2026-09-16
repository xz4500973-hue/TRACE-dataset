// clockgen.v – 简单行为模型，使仿真通过
(* keep_hierarchy = "yes" *) module clockgen (
    input  CLKIN_IN,
    output CLKFX_OUT,
    output LOCKED_OUT
);
    // 直接输出输入时钟，锁定信号恒为高
    assign CLKFX_OUT = CLKIN_IN;
    assign LOCKED_OUT = 1'b1;
endmodule