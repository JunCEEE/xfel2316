# spb20210529
Data analysis for the SPB/SFX experiment "spb20210529" as part of commissioning "900201"
SPB_DET_AGIPD1M-1/ZEROMQ/CORR
SPB_DET_AGIPD1M-1/ZEROMQ/RAW

When karabo data looks like:
karabo data:
 - [ndarray] image.cellId, uint16, (32,)
 - [ndarray] image.data, float32, (16, 128, 512, 32)
 - [ndarray] image.gain, uint16, (128, 512, 32)
 - [ndarray] image.pulseId, uint64, (32,)
 - [ndarray] image.trainId, uint64, (32,)
Humming bird data:
evt['photonPixelDetectors']['AGIPD'].data.shape
(32, 17, 512, 128)

When karabo data looks like:
Karabo data:
 - [ndarray] image.cellId, uint16, (32,)
 - [ndarray] image.data, float32, (32, 16, 512, 128)
 - [ndarray] image.gain, uint8, (128, 512, 32)
Humming bird data:
Error: IndexError: boolean index did not match indexed array along dimension 3; dimension is 128 but corresponding boolean dimension is 32

Warning: libspimage not found! The function '__init__' is dependent on libspimage (https://github.com/FilipeMaia/libspimage)

