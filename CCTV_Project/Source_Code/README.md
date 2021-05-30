# 1. Weights

| Weights Name            | Model                 | Dense Layer | Drop / Batch | Epoch  | Batch |
| ----------------------- | --------------------- | ----------- | ------------ | ------ | ----- |
| training_Conv           | Conv2D + GRU          | 4           | Dropout      | 5      | 2     |
| training_Conv_2         | Conv2D + GRU          | 4           | BatchNormal  | 5      | 2     |
| training_Mobilenet      | MobileNet + GRU       | 4           | Dropout      | 10     | 2     |
| training_Mobilenet_2    | MobileNet + GRU       | 3           | Dropout      | 5      | 1     |
| training_Mobilenet_3    | MobileNet + GRU       | 4           | BatchNormal  | 5      | 2     |
| training_VGG16          | VGG16 + LSTM (block5) | 1           |              | 5 + 10 | 1     |
| training_VGG16_2        | VGG16 + LSTM (block4) | 1           |              | 10     | 1     |
| training_VGG16_3        | VGG16 + LSTM (block5) | 4           | Dropout      | 10     | 2     |
| training_VGG16_BatchNor | VGG16 + LSTM (block5) | 4           | BatchNormal  | 5      | 2     |

# 2. Model

| Model Name                       | Model                 | Dense Layer | Drop / Batch | Epoch | Batch |
| -------------------------------- | --------------------- | ----------- | ------------ | ----- | ----- |
| rgb_Conv2D_GRU.h5                | Conv2D + GRU          | 4           | Dropout      | 5     | 2     |
| rgb_Conv2D_GRU_2.h5              | Conv2D + GRU          | 4           | BatchNormal  | 5     | 2     |
| rgb_MobileNet_GRU.h5             | MobileNet + GRU       | 4           | Dropout      | 10    | 2     |
| rgb_MobileNet_GRU_2.h5           | MobileNet + GRU       | 3           | Dropout      | 5     | 1     |
| rgb_MobileNet_GRU_BatchNormal.h5 | MobileNet + GRU       | 4           | BatchNormal  | 5     | 2     |
| rgb_VGG16_LSTM1.h5               | VGG16 + LSTM (block5) | 1           |              | 5     | 1     |
| rgb_VGG16_LSTM1_plus.h5          | VGG16 + LSTM (block5) | 1           |              | + 10  | 1     |
| rgb_VGG16_LSTM2.h5               | VGG16 + LSTM (block4) | 1           |              | 10    | 1     |
| rgb_VGG16_LSTM3.h5               | VGG16 + LSTM (block5) | 4           | Dropout      | 10    | 2     |
| rgb_VGG16_LSTM_BatchNor.h5       | VGG16 + LSTM (block5) | 4           | BatchNormal  | 5     | 2     |