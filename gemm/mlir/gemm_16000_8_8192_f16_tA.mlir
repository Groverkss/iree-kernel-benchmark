
module {
    func.func @main_0(%arg0: tensor<8x16000xf16>, %arg1: tensor<8x8192xf16>) -> tensor<16000x8192xf16> {
        %cst = arith.constant 0.000000e+00 : f16
        %0 = tensor.empty() : tensor<16000x8192xf16>
        %1 = linalg.fill ins(%cst : f16) outs(%0 : tensor<16000x8192xf16>) -> tensor<16000x8192xf16>
        %2 = linalg.matmul_transpose_a ins(%arg0, %arg1 : tensor<8x16000xf16>, tensor<8x8192xf16>) outs(%1 : tensor<16000x8192xf16>) -> tensor<16000x8192xf16>
        return %2 : tensor<16000x8192xf16>
    }
} 
