	
þÔ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758
v
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:# *
shared_namedense1/kernel
o
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes

:# *
dtype0
n
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense1/bias
g
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
: *
dtype0
v
dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense2/kernel
o
!dense2/kernel/Read/ReadVariableOpReadVariableOpdense2/kernel*
_output_shapes

: *
dtype0
n
dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense2/bias
g
dense2/bias/Read/ReadVariableOpReadVariableOpdense2/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:È*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:È*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:È*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:È* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:È*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:È* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:È*
dtype0

Adam/dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:# *%
shared_nameAdam/dense1/kernel/m
}
(Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/m*
_output_shapes

:# *
dtype0
|
Adam/dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/dense1/bias/m
u
&Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/m*
_output_shapes
: *
dtype0

Adam/dense2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/dense2/kernel/m
}
(Adam/dense2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/m*
_output_shapes

: *
dtype0
|
Adam/dense2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense2/bias/m
u
&Adam/dense2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/m*
_output_shapes
:*
dtype0

Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0

Adam/dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:# *%
shared_nameAdam/dense1/kernel/v
}
(Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/v*
_output_shapes

:# *
dtype0
|
Adam/dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/dense1/bias/v
u
&Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/v*
_output_shapes
: *
dtype0

Adam/dense2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/dense2/kernel/v
}
(Adam/dense2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense2/kernel/v*
_output_shapes

: *
dtype0
|
Adam/dense2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/dense2/bias/v
u
&Adam/dense2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense2/bias/v*
_output_shapes
:*
dtype0

Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
í<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¨<
value<B< B<
ò
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
loss
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¥
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses* 
¦

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses*
¥
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,_random_generator
-__call__
*.&call_and_return_all_conditional_losses* 
¦

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses*
³
7iter

8beta_1

9beta_2
	:decay
;learning_ratemwmx my!mz/m{0m|v}v~ v!v/v0v*
* 
.
0
1
 2
!3
/4
05*
.
0
1
 2
!3
/4
05*

<0
=1
>2
?3* 
°
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Eserving_default* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

<0
=1* 

Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
]W
VARIABLE_VALUEdense2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

 0
!1*

 0
!1*

>0
?1* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
(	variables
)trainable_variables
*regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

/0
01*

/0
01*
* 

Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
.
0
1
2
3
4
5*
 
_0
`1
a2
b3*
* 
* 
* 
* 
* 
* 

<0
=1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

>0
?1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	ctotal
	dcount
e	variables
f	keras_api*
H
	gtotal
	hcount
i
_fn_kwargs
j	variables
k	keras_api*
H
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api*
t
qtrue_positives
rtrue_negatives
sfalse_positives
tfalse_negatives
u	variables
v	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

c0
d1*

e	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

g0
h1*

j	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

l0
m1*

o	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
 
q0
r1
s2
t3*

u	variables*
z
VARIABLE_VALUEAdam/dense1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
x
serving_default_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ#

StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense1/kerneldense1/biasdense2/kerneldense2/biasoutput/kerneloutput/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_511296
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ù
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp!dense2/kernel/Read/ReadVariableOpdense2/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp(Adam/dense1/kernel/m/Read/ReadVariableOp&Adam/dense1/bias/m/Read/ReadVariableOp(Adam/dense2/kernel/m/Read/ReadVariableOp&Adam/dense2/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp(Adam/dense1/kernel/v/Read/ReadVariableOp&Adam/dense1/bias/v/Read/ReadVariableOp(Adam/dense2/kernel/v/Read/ReadVariableOp&Adam/dense2/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
__inference__traced_save_511624
À
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasdense2/kerneldense2/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2true_positivestrue_negativesfalse_positivesfalse_negativesAdam/dense1/kernel/mAdam/dense1/bias/mAdam/dense2/kernel/mAdam/dense2/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/dense1/kernel/vAdam/dense1/bias/vAdam/dense2/kernel/vAdam/dense2/bias/vAdam/output/kernel/vAdam/output/bias/v*-
Tin&
$2"*
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
"__inference__traced_restore_511733

E
)__inference_dropout2_layer_call_fn_511416

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510776`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

)__inference_model_15_layer_call_fn_511161

inputs
unknown:# 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_510975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ò
Õ
B__inference_dense1_layer_call_and_return_conditional_losses_511340

inputs0
matmul_readvariableop_resource:# -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:# *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ü

¥
__inference_loss_fn_3_511502D
6dense2_bias_regularizer_square_readvariableop_resource:
identity¢-dense2/bias/Regularizer/Square/ReadVariableOp 
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOp6dense2_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentitydense2/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^dense2/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp

E
)__inference_dropout1_layer_call_fn_511345

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510740`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¾

'__inference_dense2_layer_call_fn_511388

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_510765o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


c
D__inference_dropout2_layer_call_and_return_conditional_losses_511438

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2C[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç!
µ
!__inference__wrapped_model_510699	
input@
.model_15_dense1_matmul_readvariableop_resource:# =
/model_15_dense1_biasadd_readvariableop_resource: @
.model_15_dense2_matmul_readvariableop_resource: =
/model_15_dense2_biasadd_readvariableop_resource:@
.model_15_output_matmul_readvariableop_resource:=
/model_15_output_biasadd_readvariableop_resource:
identity¢&model_15/dense1/BiasAdd/ReadVariableOp¢%model_15/dense1/MatMul/ReadVariableOp¢&model_15/dense2/BiasAdd/ReadVariableOp¢%model_15/dense2/MatMul/ReadVariableOp¢&model_15/output/BiasAdd/ReadVariableOp¢%model_15/output/MatMul/ReadVariableOp
%model_15/dense1/MatMul/ReadVariableOpReadVariableOp.model_15_dense1_matmul_readvariableop_resource*
_output_shapes

:# *
dtype0
model_15/dense1/MatMulMatMulinput-model_15/dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&model_15/dense1/BiasAdd/ReadVariableOpReadVariableOp/model_15_dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¦
model_15/dense1/BiasAddBiasAdd model_15/dense1/MatMul:product:0.model_15/dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ p
model_15/dense1/ReluRelu model_15/dense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ |
model_15/dropout1/IdentityIdentity"model_15/dense1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
%model_15/dense2/MatMul/ReadVariableOpReadVariableOp.model_15_dense2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0¦
model_15/dense2/MatMulMatMul#model_15/dropout1/Identity:output:0-model_15/dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_15/dense2/BiasAdd/ReadVariableOpReadVariableOp/model_15_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_15/dense2/BiasAddBiasAdd model_15/dense2/MatMul:product:0.model_15/dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
model_15/dense2/ReluRelu model_15/dense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
model_15/dropout2/IdentityIdentity"model_15/dense2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model_15/output/MatMul/ReadVariableOpReadVariableOp.model_15_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¦
model_15/output/MatMulMatMul#model_15/dropout2/Identity:output:0-model_15/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_15/output/BiasAdd/ReadVariableOpReadVariableOp/model_15_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_15/output/BiasAddBiasAdd model_15/output/MatMul:product:0.model_15/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
model_15/output/SigmoidSigmoid model_15/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitymodel_15/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
NoOpNoOp'^model_15/dense1/BiasAdd/ReadVariableOp&^model_15/dense1/MatMul/ReadVariableOp'^model_15/dense2/BiasAdd/ReadVariableOp&^model_15/dense2/MatMul/ReadVariableOp'^model_15/output/BiasAdd/ReadVariableOp&^model_15/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2P
&model_15/dense1/BiasAdd/ReadVariableOp&model_15/dense1/BiasAdd/ReadVariableOp2N
%model_15/dense1/MatMul/ReadVariableOp%model_15/dense1/MatMul/ReadVariableOp2P
&model_15/dense2/BiasAdd/ReadVariableOp&model_15/dense2/BiasAdd/ReadVariableOp2N
%model_15/dense2/MatMul/ReadVariableOp%model_15/dense2/MatMul/ReadVariableOp2P
&model_15/output/BiasAdd/ReadVariableOp&model_15/output/BiasAdd/ReadVariableOp2N
%model_15/output/MatMul/ReadVariableOp%model_15/output/MatMul/ReadVariableOp:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
×
b
D__inference_dropout1_layer_call_and_return_conditional_losses_511355

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ó
B__inference_output_layer_call_and_return_conditional_losses_511458

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

'__inference_output_layer_call_fn_511447

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_510789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
Õ
B__inference_dense2_layer_call_and_return_conditional_losses_510765

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

î
"__inference__traced_restore_511733
file_prefix0
assignvariableop_dense1_kernel:# ,
assignvariableop_1_dense1_bias: 2
 assignvariableop_2_dense2_kernel: ,
assignvariableop_3_dense2_bias:2
 assignvariableop_4_output_kernel:,
assignvariableop_5_output_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: %
assignvariableop_15_total_2: %
assignvariableop_16_count_2: 1
"assignvariableop_17_true_positives:	È1
"assignvariableop_18_true_negatives:	È2
#assignvariableop_19_false_positives:	È2
#assignvariableop_20_false_negatives:	È:
(assignvariableop_21_adam_dense1_kernel_m:# 4
&assignvariableop_22_adam_dense1_bias_m: :
(assignvariableop_23_adam_dense2_kernel_m: 4
&assignvariableop_24_adam_dense2_bias_m::
(assignvariableop_25_adam_output_kernel_m:4
&assignvariableop_26_adam_output_bias_m::
(assignvariableop_27_adam_dense1_kernel_v:# 4
&assignvariableop_28_adam_dense1_bias_v: :
(assignvariableop_29_adam_dense2_kernel_v: 4
&assignvariableop_30_adam_dense2_bias_v::
(assignvariableop_31_adam_output_kernel_v:4
&assignvariableop_32_adam_output_bias_v:
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9â
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*
valueþBû"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_output_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_output_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp"assignvariableop_17_true_positivesIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp"assignvariableop_18_true_negativesIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_false_positivesIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp#assignvariableop_20_false_negativesIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_dense1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_dense2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_output_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_output_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_dense1_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_dense1_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_dense2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¥
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
5
Ä
D__inference_model_15_layer_call_and_return_conditional_losses_510820

inputs
dense1_510730:# 
dense1_510732: 
dense2_510766: 
dense2_510768:
output_510790:
output_510792:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/StatefulPartitionedCall¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallè
dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense1_510730dense1_510732*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_510729Ù
dropout1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510740
dense2/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0dense2_510766dense2_510768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_510765Ù
dropout2/PartitionedCallPartitionedCall'dense2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510776
output/StatefulPartitionedCallStatefulPartitionedCall!dropout2/PartitionedCall:output:0output_510790output_510792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_510789}
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_510730*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_510732*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense2_510766*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense2_510768*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/StatefulPartitionedCall.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs


c
D__inference_dropout2_layer_call_and_return_conditional_losses_510865

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2A[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
b
D__inference_dropout1_layer_call_and_return_conditional_losses_510740

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
×
b
D__inference_dropout2_layer_call_and_return_conditional_losses_511426

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
b
)__inference_dropout2_layer_call_fn_511421

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510865o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

)__inference_model_15_layer_call_fn_511144

inputs
unknown:# 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_510820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
¾

'__inference_dense1_layer_call_fn_511317

inputs
unknown:# 
	unknown_0: 
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_510729o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
ï
b
)__inference_dropout1_layer_call_fn_511350

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510898o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ü

¥
__inference_loss_fn_1_511480D
6dense1_bias_regularizer_square_readvariableop_resource: 
identity¢-dense1/bias/Regularizer/Square/ReadVariableOp 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOp6dense1_bias_regularizer_square_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ]
IdentityIdentitydense1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^dense1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp
û7

D__inference_model_15_layer_call_and_return_conditional_losses_510975

inputs
dense1_510933:# 
dense1_510935: 
dense2_510939: 
dense2_510941:
output_510945:
output_510947:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/StatefulPartitionedCall¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢ dropout1/StatefulPartitionedCall¢ dropout2/StatefulPartitionedCall¢output/StatefulPartitionedCallè
dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense1_510933dense1_510935*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_510729é
 dropout1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510898
dense2/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0dense2_510939dense2_510941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_510765
 dropout2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0!^dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510865
output/StatefulPartitionedCallStatefulPartitionedCall)dropout2/StatefulPartitionedCall:output:0output_510945output_510947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_510789}
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_510933*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_510935*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense2_510939*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense2_510941*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/StatefulPartitionedCall.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp!^dropout1/StatefulPartitionedCall!^dropout2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2D
 dropout2/StatefulPartitionedCall dropout2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ò
Õ
B__inference_dense1_layer_call_and_return_conditional_losses_510729

inputs0
matmul_readvariableop_resource:# -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:# *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Ù
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ò
Õ
B__inference_dense2_layer_call_and_return_conditional_losses_511411

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


c
D__inference_dropout1_layer_call_and_return_conditional_losses_510898

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2A[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
úC
ô
__inference__traced_save_511624
file_prefix,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
(savev2_dense2_kernel_read_readvariableop*
&savev2_dense2_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop3
/savev2_adam_dense2_kernel_m_read_readvariableop1
-savev2_adam_dense2_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop3
/savev2_adam_dense2_kernel_v_read_readvariableop1
-savev2_adam_dense2_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ß
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*
valueþBû"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Õ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_dense2_kernel_read_readvariableop&savev2_dense2_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_dense2_kernel_m_read_readvariableop-savev2_adam_dense2_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_dense2_kernel_v_read_readvariableop-savev2_adam_dense2_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Û
_input_shapesÉ
Æ: :# : : :::: : : : : : : : : : : :È:È:È:È:# : : ::::# : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:# : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:È:!

_output_shapes	
:È:!

_output_shapes	
:È:!

_output_shapes	
:È:$ 

_output_shapes

:# : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:# : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
ø7

D__inference_model_15_layer_call_and_return_conditional_losses_511097	
input
dense1_511055:# 
dense1_511057: 
dense2_511061: 
dense2_511063:
output_511067:
output_511069:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/StatefulPartitionedCall¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢ dropout1/StatefulPartitionedCall¢ dropout2/StatefulPartitionedCall¢output/StatefulPartitionedCallç
dense1/StatefulPartitionedCallStatefulPartitionedCallinputdense1_511055dense1_511057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_510729é
 dropout1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510898
dense2/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0dense2_511061dense2_511063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_510765
 dropout2/StatefulPartitionedCallStatefulPartitionedCall'dense2/StatefulPartitionedCall:output:0!^dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510865
output/StatefulPartitionedCallStatefulPartitionedCall)dropout2/StatefulPartitionedCall:output:0output_511067output_511069*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_510789}
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_511055*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_511057*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense2_511061*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense2_511063*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/StatefulPartitionedCall.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp!^dropout1/StatefulPartitionedCall!^dropout2/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2D
 dropout2/StatefulPartitionedCall dropout2/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
×
b
D__inference_dropout2_layer_call_and_return_conditional_losses_510776

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ó
B__inference_output_layer_call_and_return_conditional_losses_510789

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


c
D__inference_dropout1_layer_call_and_return_conditional_losses_511367

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2C[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ç

)__inference_model_15_layer_call_fn_511007	
input
unknown:# 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_510975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
<
±
D__inference_model_15_layer_call_and_return_conditional_losses_511212

inputs7
%dense1_matmul_readvariableop_resource:# 4
&dense1_biasadd_readvariableop_resource: 7
%dense2_matmul_readvariableop_resource: 4
&dense2_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/BiasAdd/ReadVariableOp¢dense2/MatMul/ReadVariableOp¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:# *
dtype0w
dense1/MatMulMatMulinputs$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ^
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
dropout1/IdentityIdentitydense1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense2/MatMulMatMuldropout1/Identity:output:0$dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dense2/ReluReludense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout2/IdentityIdentitydense2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMuldropout2/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
¿
ü
$__inference_signature_wrapper_511296	
input
unknown:# 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_510699o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
5
Ã
D__inference_model_15_layer_call_and_return_conditional_losses_511052	
input
dense1_511010:# 
dense1_511012: 
dense2_511016: 
dense2_511018:
output_511022:
output_511024:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/StatefulPartitionedCall¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallç
dense1/StatefulPartitionedCallStatefulPartitionedCallinputdense1_511010dense1_511012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_510729Ù
dropout1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout1_layer_call_and_return_conditional_losses_510740
dense2/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0dense2_511016dense2_511018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense2_layer_call_and_return_conditional_losses_510765Ù
dropout2/PartitionedCallPartitionedCall'dense2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout2_layer_call_and_return_conditional_losses_510776
output/StatefulPartitionedCallStatefulPartitionedCall!dropout2/PartitionedCall:output:0output_511022output_511024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_510789}
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_511010*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_511012*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: }
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense2_511016*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense2_511018*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/StatefulPartitionedCall.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
dense2/StatefulPartitionedCalldense2/StatefulPartitionedCall2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput

­
__inference_loss_fn_0_511469J
8dense1_kernel_regularizer_square_readvariableop_resource:# 
identity¢/dense1/kernel/Regularizer/Square/ReadVariableOp¨
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8dense1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!dense1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^dense1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp
¢K
±
D__inference_model_15_layer_call_and_return_conditional_losses_511277

inputs7
%dense1_matmul_readvariableop_resource:# 4
&dense1_biasadd_readvariableop_resource: 7
%dense2_matmul_readvariableop_resource: 4
&dense2_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢dense2/BiasAdd/ReadVariableOp¢dense2/MatMul/ReadVariableOp¢-dense2/bias/Regularizer/Square/ReadVariableOp¢/dense2/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:# *
dtype0w
dense1/MatMulMatMulinputs$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ^
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout1/dropout/MulMuldense1/Relu:activations:0dropout1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
dropout1/dropout/ShapeShapedense1/Relu:activations:0*
T0*
_output_shapes
:º
-dropout1/dropout/random_uniform/RandomUniformRandomUniformdropout1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed±ÿå)*
seed2Bd
dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Á
dropout1/dropout/GreaterEqualGreaterEqual6dropout1/dropout/random_uniform/RandomUniform:output:0(dropout1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout1/dropout/CastCast!dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout1/dropout/Mul_1Muldropout1/dropout/Mul:z:0dropout1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense2/MatMulMatMuldropout1/dropout/Mul_1:z:0$dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/BiasAddBiasAdddense2/MatMul:product:0%dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
dense2/ReluReludense2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
dropout2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout2/dropout/MulMuldense2/Relu:activations:0dropout2/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
dropout2/dropout/ShapeShapedense2/Relu:activations:0*
T0*
_output_shapes
:º
-dropout2/dropout/random_uniform/RandomUniformRandomUniformdropout2/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Bd
dropout2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Á
dropout2/dropout/GreaterEqualGreaterEqual6dropout2/dropout/random_uniform/RandomUniform:output:0(dropout2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout2/dropout/CastCast!dropout2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout2/dropout/Mul_1Muldropout2/dropout/Mul:z:0dropout2/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMuldropout2/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:# *
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:# p
dense1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense1/kernel/Regularizer/SumSum$dense1/kernel/Regularizer/Square:y:0(dense1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/kernel/Regularizer/mulMul(dense1/kernel/Regularizer/mul/x:output:0&dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
: g
dense1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense1/bias/Regularizer/SumSum"dense1/bias/Regularizer/Square:y:0&dense1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense1/bias/Regularizer/mulMul&dense1/bias/Regularizer/mul/x:output:0$dense1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
-dense2/bias/Regularizer/Square/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense2/bias/Regularizer/SquareSquare5dense2/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:g
dense2/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense2/bias/Regularizer/SumSum"dense2/bias/Regularizer/Square:y:0&dense2/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: b
dense2/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/bias/Regularizer/mulMul&dense2/bias/Regularizer/mul/x:output:0$dense2/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^dense2/BiasAdd/ReadVariableOp^dense2/MatMul/ReadVariableOp.^dense2/bias/Regularizer/Square/ReadVariableOp0^dense2/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2>
dense2/BiasAdd/ReadVariableOpdense2/BiasAdd/ReadVariableOp2<
dense2/MatMul/ReadVariableOpdense2/MatMul/ReadVariableOp2^
-dense2/bias/Regularizer/Square/ReadVariableOp-dense2/bias/Regularizer/Square/ReadVariableOp2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
ç

)__inference_model_15_layer_call_fn_510835	
input
unknown:# 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_15_layer_call_and_return_conditional_losses_510820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ#: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput

­
__inference_loss_fn_2_511491J
8dense2_kernel_regularizer_square_readvariableop_resource: 
identity¢/dense2/kernel/Regularizer/Square/ReadVariableOp¨
/dense2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8dense2_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype0
 dense2/kernel/Regularizer/SquareSquare7dense2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: p
dense2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
dense2/kernel/Regularizer/SumSum$dense2/kernel/Regularizer/Square:y:0(dense2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
dense2/kernel/Regularizer/mulMul(dense2/kernel/Regularizer/mul/x:output:0&dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!dense2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^dense2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense2/kernel/Regularizer/Square/ReadVariableOp/dense2/kernel/Regularizer/Square/ReadVariableOp"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¥
serving_default
7
input.
serving_default_input:0ÿÿÿÿÿÿÿÿÿ#:
output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict: {

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
loss
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,_random_generator
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
»

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
Â
7iter

8beta_1

9beta_2
	:decay
;learning_ratemwmx my!mz/m{0m|v}v~ v!v/v0v"
	optimizer
 "
trackable_list_wrapper
J
0
1
 2
!3
/4
05"
trackable_list_wrapper
J
0
1
 2
!3
/4
05"
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
Ê
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_15_layer_call_fn_510835
)__inference_model_15_layer_call_fn_511144
)__inference_model_15_layer_call_fn_511161
)__inference_model_15_layer_call_fn_511007À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_15_layer_call_and_return_conditional_losses_511212
D__inference_model_15_layer_call_and_return_conditional_losses_511277
D__inference_model_15_layer_call_and_return_conditional_losses_511052
D__inference_model_15_layer_call_and_return_conditional_losses_511097À
·²³
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
kwonlydefaultsª 
annotationsª *
 
ÊBÇ
!__inference__wrapped_model_510699input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
Eserving_default"
signature_map
:# 2dense1/kernel
: 2dense1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
­
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense1_layer_call_fn_511317¢
²
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
annotationsª *
 
ì2é
B__inference_dense1_layer_call_and_return_conditional_losses_511340¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_dropout1_layer_call_fn_511345
)__inference_dropout1_layer_call_fn_511350´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout1_layer_call_and_return_conditional_losses_511355
D__inference_dropout1_layer_call_and_return_conditional_losses_511367´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
: 2dense2/kernel
:2dense2/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense2_layer_call_fn_511388¢
²
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
annotationsª *
 
ì2é
B__inference_dense2_layer_call_and_return_conditional_losses_511411¢
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
(	variables
)trainable_variables
*regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_dropout2_layer_call_fn_511416
)__inference_dropout2_layer_call_fn_511421´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout2_layer_call_and_return_conditional_losses_511426
D__inference_dropout2_layer_call_and_return_conditional_losses_511438´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:2output/kernel
:2output/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_output_layer_call_fn_511447¢
²
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
annotationsª *
 
ì2é
B__inference_output_layer_call_and_return_conditional_losses_511458¢
²
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
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
³2°
__inference_loss_fn_0_511469
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_511480
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_2_511491
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_3_511502
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
<
_0
`1
a2
b3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÉBÆ
$__inference_signature_wrapper_511296input"
²
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
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
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
 "
trackable_list_wrapper
.
>0
?1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ctotal
	dcount
e	variables
f	keras_api"
_tf_keras_metric
^
	gtotal
	hcount
i
_fn_kwargs
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric

qtrue_positives
rtrue_negatives
sfalse_positives
tfalse_negatives
u	variables
v	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
c0
d1"
trackable_list_wrapper
-
e	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:È (2true_positives
:È (2true_negatives
 :È (2false_positives
 :È (2false_negatives
<
q0
r1
s2
t3"
trackable_list_wrapper
-
u	variables"
_generic_user_object
$:"# 2Adam/dense1/kernel/m
: 2Adam/dense1/bias/m
$:" 2Adam/dense2/kernel/m
:2Adam/dense2/bias/m
$:"2Adam/output/kernel/m
:2Adam/output/bias/m
$:"# 2Adam/dense1/kernel/v
: 2Adam/dense1/bias/v
$:" 2Adam/dense2/kernel/v
:2Adam/dense2/bias/v
$:"2Adam/output/kernel/v
:2Adam/output/bias/v
!__inference__wrapped_model_510699i !/0.¢+
$¢!

inputÿÿÿÿÿÿÿÿÿ#
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ¢
B__inference_dense1_layer_call_and_return_conditional_losses_511340\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ#
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 z
'__inference_dense1_layer_call_fn_511317O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ#
ª "ÿÿÿÿÿÿÿÿÿ ¢
B__inference_dense2_layer_call_and_return_conditional_losses_511411\ !/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense2_layer_call_fn_511388O !/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dropout1_layer_call_and_return_conditional_losses_511355\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¤
D__inference_dropout1_layer_call_and_return_conditional_losses_511367\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
)__inference_dropout1_layer_call_fn_511345O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ |
)__inference_dropout1_layer_call_fn_511350O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dropout2_layer_call_and_return_conditional_losses_511426\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
D__inference_dropout2_layer_call_and_return_conditional_losses_511438\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dropout2_layer_call_fn_511416O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ|
)__inference_dropout2_layer_call_fn_511421O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ;
__inference_loss_fn_0_511469¢

¢ 
ª " ;
__inference_loss_fn_1_511480¢

¢ 
ª " ;
__inference_loss_fn_2_511491 ¢

¢ 
ª " ;
__inference_loss_fn_3_511502!¢

¢ 
ª " ¯
D__inference_model_15_layer_call_and_return_conditional_losses_511052g !/06¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯
D__inference_model_15_layer_call_and_return_conditional_losses_511097g !/06¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 °
D__inference_model_15_layer_call_and_return_conditional_losses_511212h !/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 °
D__inference_model_15_layer_call_and_return_conditional_losses_511277h !/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_15_layer_call_fn_510835Z !/06¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_511007Z !/06¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_511144[ !/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_15_layer_call_fn_511161[ !/07¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_output_layer_call_and_return_conditional_losses_511458\/0/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_output_layer_call_fn_511447O/0/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_signature_wrapper_511296r !/07¢4
¢ 
-ª*
(
input
inputÿÿÿÿÿÿÿÿÿ#"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ