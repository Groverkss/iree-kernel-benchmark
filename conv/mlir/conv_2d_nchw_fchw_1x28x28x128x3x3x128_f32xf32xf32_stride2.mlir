
util.func public @main(%arg0: tensor<1x128x58x58xf32>, %arg1: tensor<128x128x3x3xf32>) -> tensor<1x128x28x28xf32> {
    %cst = arith.constant 0.0 : f32
    %9 = tensor.empty() : tensor<1x128x28x28xf32>
    %10 = linalg.fill ins(%cst : f32) outs(%9 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%arg0, %arg1 : tensor<1x128x58x58xf32>, tensor<128x128x3x3xf32>) outs(%10 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    util.return %11 : tensor<1x128x28x28xf32>
}
