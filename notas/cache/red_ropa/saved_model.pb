фо
сВ
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
3
Square
x"T
y"T"
Ttype:
2
	
О
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8Ар
{
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	
*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
џ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*К
valueАB­ BІ
Ѕ
layer-0
layer_with_weights-0
layer-1
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
R
	trainable_variables

	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
d
iter

beta_1

beta_2
	decay
learning_ratem2m3v4v5

0
1

0
1
 
­
layer_regularization_losses
metrics
trainable_variables
	variables
layer_metrics

layers
non_trainable_variables
regularization_losses
 
 
 
 
­
layer_regularization_losses
metrics
	trainable_variables

	variables
layer_metrics

 layers
!non_trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
"layer_regularization_losses
#metrics
trainable_variables
	variables
$layer_metrics

%layers
&non_trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 

0
1
 
 
 
 
 
 
 
 
 
 
 
4
	)total
	*count
+	variables
,	keras_api
D
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

+	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

0	variables
~|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

 serving_default_flatten_10_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
п
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_10_inputdense_11/kerneldense_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_152169
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
З
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_152351

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_11/kernel/mAdam/dense_11/bias/mAdam/dense_11/kernel/vAdam/dense_11/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_152406Ё
 
G
+__inference_flatten_10_layer_call_fn_152252

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1520152
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
њ'
 
!__inference__wrapped_model_151992
flatten_10_input9
5sequential_10_dense_11_matmul_readvariableop_resource:
6sequential_10_dense_11_biasadd_readvariableop_resource
identityЂ-sequential_10/dense_11/BiasAdd/ReadVariableOpЂ,sequential_10/dense_11/MatMul/ReadVariableOp
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2 
sequential_10/flatten_10/ConstН
 sequential_10/flatten_10/ReshapeReshapeflatten_10_input'sequential_10/flatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 sequential_10/flatten_10/Reshapeг
,sequential_10/dense_11/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_11_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02.
,sequential_10/dense_11/MatMul/ReadVariableOpл
sequential_10/dense_11/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
sequential_10/dense_11/MatMulб
-sequential_10/dense_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_10/dense_11/BiasAdd/ReadVariableOpн
sequential_10/dense_11/BiasAddBiasAdd'sequential_10/dense_11/MatMul:product:05sequential_10/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2 
sequential_10/dense_11/BiasAddІ
sequential_10/dense_11/SoftmaxSoftmax'sequential_10/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2 
sequential_10/dense_11/SoftmaxЬ
1sequential_10/dense_11/ActivityRegularizer/SquareSquare(sequential_10/dense_11/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ
23
1sequential_10/dense_11/ActivityRegularizer/SquareЕ
0sequential_10/dense_11/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_10/dense_11/ActivityRegularizer/Constњ
.sequential_10/dense_11/ActivityRegularizer/SumSum5sequential_10/dense_11/ActivityRegularizer/Square:y:09sequential_10/dense_11/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_11/ActivityRegularizer/SumЉ
0sequential_10/dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Зб822
0sequential_10/dense_11/ActivityRegularizer/mul/xќ
.sequential_10/dense_11/ActivityRegularizer/mulMul9sequential_10/dense_11/ActivityRegularizer/mul/x:output:07sequential_10/dense_11/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_11/ActivityRegularizer/mulМ
0sequential_10/dense_11/ActivityRegularizer/ShapeShape(sequential_10/dense_11/Softmax:softmax:0*
T0*
_output_shapes
:22
0sequential_10/dense_11/ActivityRegularizer/ShapeЪ
>sequential_10/dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_10/dense_11/ActivityRegularizer/strided_slice/stackЮ
@sequential_10/dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_11/ActivityRegularizer/strided_slice/stack_1Ю
@sequential_10/dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_11/ActivityRegularizer/strided_slice/stack_2ф
8sequential_10/dense_11/ActivityRegularizer/strided_sliceStridedSlice9sequential_10/dense_11/ActivityRegularizer/Shape:output:0Gsequential_10/dense_11/ActivityRegularizer/strided_slice/stack:output:0Isequential_10/dense_11/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_10/dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_10/dense_11/ActivityRegularizer/strided_sliceн
/sequential_10/dense_11/ActivityRegularizer/CastCastAsequential_10/dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_10/dense_11/ActivityRegularizer/Cast§
2sequential_10/dense_11/ActivityRegularizer/truedivRealDiv2sequential_10/dense_11/ActivityRegularizer/mul:z:03sequential_10/dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_10/dense_11/ActivityRegularizer/truedivл
IdentityIdentity(sequential_10/dense_11/Softmax:softmax:0.^sequential_10/dense_11/BiasAdd/ReadVariableOp-^sequential_10/dense_11/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::2^
-sequential_10/dense_11/BiasAdd/ReadVariableOp-sequential_10/dense_11/BiasAdd/ReadVariableOp2\
,sequential_10/dense_11/MatMul/ReadVariableOp,sequential_10/dense_11/MatMul/ReadVariableOp:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
л

$__inference_signature_wrapper_152169
flatten_10_input
unknown
	unknown_0
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_1519922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
Ж
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_152015

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


.__inference_sequential_10_layer_call_fn_152121
flatten_10_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1521132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
ђ

.__inference_sequential_10_layer_call_fn_152231

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1521132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
"

I__inference_sequential_10_layer_call_and_return_conditional_losses_152195

inputs+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity

identity_1Ђdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_10/Const
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
flatten_10/ReshapeЉ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_11/MatMul/ReadVariableOpЃ
dense_11/MatMulMatMulflatten_10/Reshape:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/MatMulЇ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOpЅ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/SoftmaxЂ
#dense_11/ActivityRegularizer/SquareSquaredense_11/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ
2%
#dense_11/ActivityRegularizer/Square
"dense_11/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_11/ActivityRegularizer/ConstТ
 dense_11/ActivityRegularizer/SumSum'dense_11/ActivityRegularizer/Square:y:0+dense_11/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_11/ActivityRegularizer/Sum
"dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Зб82$
"dense_11/ActivityRegularizer/mul/xФ
 dense_11/ActivityRegularizer/mulMul+dense_11/ActivityRegularizer/mul/x:output:0)dense_11/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_11/ActivityRegularizer/mul
"dense_11/ActivityRegularizer/ShapeShapedense_11/Softmax:softmax:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/CastХ
$dense_11/ActivityRegularizer/truedivRealDiv$dense_11/ActivityRegularizer/mul:z:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truedivБ
IdentityIdentitydense_11/Softmax:softmax:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

IdentityВ

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ІA
Ф
"__inference__traced_restore_152406
file_prefix$
 assignvariableop_dense_11_kernel$
 assignvariableop_1_dense_11_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate
assignvariableop_7_total
assignvariableop_8_count
assignvariableop_9_total_1
assignvariableop_10_count_1.
*assignvariableop_11_adam_dense_11_kernel_m,
(assignvariableop_12_adam_dense_11_bias_m.
*assignvariableop_13_adam_dense_11_kernel_v,
(assignvariableop_14_adam_dense_11_bias_v
identity_16ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Њ
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_11_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_11_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2Ё
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ђ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Њ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ѓ
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11В
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_dense_11_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12А
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_dense_11_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13В
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_11_kernel_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14А
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_11_bias_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЈ
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15
Identity_16IdentityIdentity_15:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_16"#
identity_16Identity_16:output:0*Q
_input_shapes@
>: :::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
љ	
н
D__inference_dense_11_layer_call_and_return_conditional_losses_152263

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Х
I__inference_sequential_10_layer_call_and_return_conditional_losses_152113

inputs
dense_11_152098
dense_11_152100
identity

identity_1Ђ dense_11/StatefulPartitionedCallл
flatten_10/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1520152
flatten_10/PartitionedCallБ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_11_152098dense_11_152100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342"
 dense_11/StatefulPartitionedCallњ
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *9
f4R2
0__inference_dense_11_activity_regularizer_1520052.
,dense_11/ActivityRegularizer/PartitionedCallЁ
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/Castж
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truediv 
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0!^dense_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
г(

__inference__traced_save_152351
file_prefix.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Њ
value BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЈ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesП
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*\
_input_shapesK
I: :	
:
: : : : : : : : : :	
:
:	
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	
: 

_output_shapes
:
:%!

_output_shapes
:	
: 

_output_shapes
:
:

_output_shapes
: 

Я
I__inference_sequential_10_layer_call_and_return_conditional_losses_152072
flatten_10_input
dense_11_152057
dense_11_152059
identity

identity_1Ђ dense_11/StatefulPartitionedCallх
flatten_10/PartitionedCallPartitionedCallflatten_10_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1520152
flatten_10/PartitionedCallБ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_11_152057dense_11_152059*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342"
 dense_11/StatefulPartitionedCallњ
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *9
f4R2
0__inference_dense_11_activity_regularizer_1520052.
,dense_11/ActivityRegularizer/PartitionedCallЁ
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/Castж
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truediv 
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0!^dense_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
"

I__inference_sequential_10_layer_call_and_return_conditional_losses_152221

inputs+
'dense_11_matmul_readvariableop_resource,
(dense_11_biasadd_readvariableop_resource
identity

identity_1Ђdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_10/Const
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
flatten_10/ReshapeЉ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype02 
dense_11/MatMul/ReadVariableOpЃ
dense_11/MatMulMatMulflatten_10/Reshape:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/MatMulЇ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_11/BiasAdd/ReadVariableOpЅ
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/BiasAdd|
dense_11/SoftmaxSoftmaxdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
dense_11/SoftmaxЂ
#dense_11/ActivityRegularizer/SquareSquaredense_11/Softmax:softmax:0*
T0*'
_output_shapes
:џџџџџџџџџ
2%
#dense_11/ActivityRegularizer/Square
"dense_11/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_11/ActivityRegularizer/ConstТ
 dense_11/ActivityRegularizer/SumSum'dense_11/ActivityRegularizer/Square:y:0+dense_11/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_11/ActivityRegularizer/Sum
"dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Зб82$
"dense_11/ActivityRegularizer/mul/xФ
 dense_11/ActivityRegularizer/mulMul+dense_11/ActivityRegularizer/mul/x:output:0)dense_11/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_11/ActivityRegularizer/mul
"dense_11/ActivityRegularizer/ShapeShapedense_11/Softmax:softmax:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/CastХ
$dense_11/ActivityRegularizer/truedivRealDiv$dense_11/ActivityRegularizer/mul:z:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truedivБ
IdentityIdentitydense_11/Softmax:softmax:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

IdentityВ

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0 ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ф
J
0__inference_dense_11_activity_regularizer_152005
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:џџџџџџџџџ2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Зб82
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself

Х
I__inference_sequential_10_layer_call_and_return_conditional_losses_152142

inputs
dense_11_152127
dense_11_152129
identity

identity_1Ђ dense_11/StatefulPartitionedCallл
flatten_10/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1520152
flatten_10/PartitionedCallБ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_11_152127dense_11_152129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342"
 dense_11/StatefulPartitionedCallњ
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *9
f4R2
0__inference_dense_11_activity_regularizer_1520052.
,dense_11/ActivityRegularizer/PartitionedCallЁ
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/Castж
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truediv 
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0!^dense_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


.__inference_sequential_10_layer_call_fn_152150
flatten_10_input
unknown
	unknown_0
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1521422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
о
~
)__inference_dense_11_layer_call_fn_152272

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ђ

.__inference_sequential_10_layer_call_fn_152241

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:џџџџџџџџџ
: *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_1521422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*2
_input_shapes!
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ж
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_152247

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц

­
H__inference_dense_11_layer_call_and_return_all_conditional_losses_152283

inputs
unknown
	unknown_0
identity

identity_1ЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342
StatefulPartitionedCallЗ
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *9
f4R2
0__inference_dense_11_activity_regularizer_1520052
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Я
I__inference_sequential_10_layer_call_and_return_conditional_losses_152091
flatten_10_input
dense_11_152076
dense_11_152078
identity

identity_1Ђ dense_11/StatefulPartitionedCallх
flatten_10/PartitionedCallPartitionedCallflatten_10_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_1520152
flatten_10/PartitionedCallБ
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_11_152076dense_11_152078*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_1520342"
 dense_11/StatefulPartitionedCallњ
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *9
f4R2
0__inference_dense_11_activity_regularizer_1520052.
,dense_11/ActivityRegularizer/PartitionedCallЁ
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_11/ActivityRegularizer/ShapeЎ
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_11/ActivityRegularizer/strided_slice/stackВ
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_1В
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_11/ActivityRegularizer/strided_slice/stack_2
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_11/ActivityRegularizer/strided_sliceГ
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_11/ActivityRegularizer/Castж
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_11/ActivityRegularizer/truediv 
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0!^dense_11/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity

Identity_1Identity(dense_11/ActivityRegularizer/truediv:z:0!^dense_11/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*2
_input_shapes!
:џџџџџџџџџ::2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:] Y
+
_output_shapes
:џџџџџџџџџ
*
_user_specified_nameflatten_10_input
љ	
н
D__inference_dense_11_layer_call_and_return_conditional_losses_152034

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*С
serving_default­
Q
flatten_10_input=
"serving_default_flatten_10_input:0џџџџџџџџџ<
dense_110
StatefulPartitionedCall:0џџџџџџџџџ
tensorflow/serving/predict:жg
Н
layer-0
layer_with_weights-0
layer-1
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
6_default_save_signature
*7&call_and_return_all_conditional_losses
8__call__"О
_tf_keras_sequential{"class_name": "Sequential", "name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_10_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_10_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ш
	trainable_variables

	variables
regularization_losses
	keras_api
9__call__
*:&call_and_return_all_conditional_losses"й
_tf_keras_layerП{"class_name": "Flatten", "name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
	

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
;__call__
*<&call_and_return_all_conditional_losses"т
_tf_keras_layerШ{"class_name": "Dense", "name": "dense_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_11", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
w
iter

beta_1

beta_2
	decay
learning_ratem2m3v4v5"
	optimizer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
layer_regularization_losses
metrics
trainable_variables
	variables
layer_metrics

layers
non_trainable_variables
regularization_losses
8__call__
6_default_save_signature
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
,
=serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
layer_regularization_losses
metrics
	trainable_variables

	variables
layer_metrics

 layers
!non_trainable_variables
regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
": 	
2dense_11/kernel
:
2dense_11/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
"layer_regularization_losses
#metrics
trainable_variables
	variables
$layer_metrics

%layers
&non_trainable_variables
regularization_losses
;__call__
>activity_regularizer_fn
*<&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Л
	)total
	*count
+	variables
,	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
џ
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
)0
*1"
trackable_list_wrapper
-
+	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
':%	
2Adam/dense_11/kernel/m
 :
2Adam/dense_11/bias/m
':%	
2Adam/dense_11/kernel/v
 :
2Adam/dense_11/bias/v
ь2щ
!__inference__wrapped_model_151992У
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *3Ђ0
.+
flatten_10_inputџџџџџџџџџ
ђ2я
I__inference_sequential_10_layer_call_and_return_conditional_losses_152195
I__inference_sequential_10_layer_call_and_return_conditional_losses_152072
I__inference_sequential_10_layer_call_and_return_conditional_losses_152221
I__inference_sequential_10_layer_call_and_return_conditional_losses_152091Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
.__inference_sequential_10_layer_call_fn_152231
.__inference_sequential_10_layer_call_fn_152121
.__inference_sequential_10_layer_call_fn_152241
.__inference_sequential_10_layer_call_fn_152150Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
е2в
+__inference_flatten_10_layer_call_fn_152252Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№2э
F__inference_flatten_10_layer_call_and_return_conditional_losses_152247Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_dense_11_layer_call_fn_152272Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђ2я
H__inference_dense_11_layer_call_and_return_all_conditional_losses_152283Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
дBб
$__inference_signature_wrapper_152169flatten_10_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
п2м
0__inference_dense_11_activity_regularizer_152005Ї
В
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *Ђ
	
ю2ы
D__inference_dense_11_layer_call_and_return_conditional_losses_152263Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
!__inference__wrapped_model_151992x=Ђ:
3Ђ0
.+
flatten_10_inputџџџџџџџџџ
Њ "3Њ0
.
dense_11"
dense_11џџџџџџџџџ
]
0__inference_dense_11_activity_regularizer_152005)Ђ
Ђ

self
Њ " З
H__inference_dense_11_layer_call_and_return_all_conditional_losses_152283k0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 Ѕ
D__inference_dense_11_layer_call_and_return_conditional_losses_152263]0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ

 }
)__inference_dense_11_layer_call_fn_152272P0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ
Ї
F__inference_flatten_10_layer_call_and_return_conditional_losses_152247]3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 
+__inference_flatten_10_layer_call_fn_152252P3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЮ
I__inference_sequential_10_layer_call_and_return_conditional_losses_152072EЂB
;Ђ8
.+
flatten_10_inputџџџџџџџџџ
p

 
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 Ю
I__inference_sequential_10_layer_call_and_return_conditional_losses_152091EЂB
;Ђ8
.+
flatten_10_inputџџџџџџџџџ
p 

 
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 У
I__inference_sequential_10_layer_call_and_return_conditional_losses_152195v;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 У
I__inference_sequential_10_layer_call_and_return_conditional_losses_152221v;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "3Ђ0

0џџџџџџџџџ


	
1/0 
.__inference_sequential_10_layer_call_fn_152121eEЂB
;Ђ8
.+
flatten_10_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ

.__inference_sequential_10_layer_call_fn_152150eEЂB
;Ђ8
.+
flatten_10_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ

.__inference_sequential_10_layer_call_fn_152231[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџ

.__inference_sequential_10_layer_call_fn_152241[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
Е
$__inference_signature_wrapper_152169QЂN
Ђ 
GЊD
B
flatten_10_input.+
flatten_10_inputџџџџџџџџџ"3Њ0
.
dense_11"
dense_11џџџџџџџџџ
