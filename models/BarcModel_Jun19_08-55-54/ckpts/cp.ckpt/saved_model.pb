û 
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
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758·
v
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#@*
shared_namedense1/kernel
o
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel*
_output_shapes

:#@*
dtype0
n
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense1/bias
g
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes
:@*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:@*
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
:#@*%
shared_nameAdam/dense1/kernel/m
}
(Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/m*
_output_shapes

:#@*
dtype0
|
Adam/dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/dense1/bias/m
u
&Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/m*
_output_shapes
:@*
dtype0

Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:@*
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
:#@*%
shared_nameAdam/dense1/kernel/v
}
(Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/v*
_output_shapes

:#@*
dtype0
|
Adam/dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/dense1/bias/v
u
&Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/v*
_output_shapes
:@*
dtype0

Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:@*
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
.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Æ-
value¼-B¹- B²-
¾
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
loss
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¥
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses* 
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*

&iter

'beta_1

(beta_2
	)decay
*learning_ratemZm[m\m]v^v_v`va*
* 
 
0
1
2
3*
 
0
1
2
3*

+0
,1* 
°
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

2serving_default* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*

+0
,1* 

3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
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
 
0
1
2
3*
 
B0
C1
D2
E3*
* 
* 
* 
* 
* 
* 

+0
,1* 
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
	Ftotal
	Gcount
H	variables
I	keras_api*
H
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api*
H
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api*
t
Ttrue_positives
Utrue_negatives
Vfalse_positives
Wfalse_negatives
X	variables
Y	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

H	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

J0
K1*

M	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

O0
P1*

R	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
 
T0
U1
V2
W3*

X	variables*
z
VARIABLE_VALUEAdam/dense1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
x
serving_default_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ#
ñ
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense1/kerneldense1/biasoutput/kerneloutput/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2331319
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ì	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp(Adam/dense1/kernel/m/Read/ReadVariableOp&Adam/dense1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp(Adam/dense1/kernel/v/Read/ReadVariableOp&Adam/dense1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_2331536
Ë
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense1/kerneldense1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2true_positivestrue_negativesfalse_positivesfalse_negativesAdam/dense1/kernel/mAdam/dense1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/dense1/kernel/vAdam/dense1/bias/vAdam/output/kernel/vAdam/output/bias/v*'
Tin 
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_2331627ÆÅ

Ë
)__inference_model_4_layer_call_fn_2331137	
input
unknown:#@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_2331113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
êj
£
#__inference__traced_restore_2331627
file_prefix0
assignvariableop_dense1_kernel:#@,
assignvariableop_1_dense1_bias:@2
 assignvariableop_2_output_kernel:@,
assignvariableop_3_output_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: %
assignvariableop_13_total_2: %
assignvariableop_14_count_2: 1
"assignvariableop_15_true_positives:	È1
"assignvariableop_16_true_negatives:	È2
#assignvariableop_17_false_positives:	È2
#assignvariableop_18_false_negatives:	È:
(assignvariableop_19_adam_dense1_kernel_m:#@4
&assignvariableop_20_adam_dense1_bias_m:@:
(assignvariableop_21_adam_output_kernel_m:@4
&assignvariableop_22_adam_output_bias_m::
(assignvariableop_23_adam_dense1_kernel_v:#@4
&assignvariableop_24_adam_dense1_bias_v:@:
(assignvariableop_25_adam_output_kernel_v:@4
&assignvariableop_26_adam_output_bias_v:
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¨
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Î
valueÄBÁB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B «
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
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
AssignVariableOp_2AssignVariableOp assignvariableop_2_output_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_output_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_true_positivesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_true_negativesIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_false_positivesIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_false_negativesIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_dense1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_output_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_output_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_dense1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_output_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_output_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¡
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262(
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
Ó
Ö
C__inference_dense1_layer_call_and_return_conditional_losses_2330974

inputs0
matmul_readvariableop_resource:#@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
:ÿÿÿÿÿÿÿÿÿ@Ù
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
Ó
Ö
C__inference_dense1_layer_call_and_return_conditional_losses_2331363

inputs0
matmul_readvariableop_resource:#@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
:ÿÿÿÿÿÿÿÿÿ@Ù
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


d
E__inference_dropout1_layer_call_and_return_conditional_losses_2331058

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2z[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ý#
¡
D__inference_model_4_layer_call_and_return_conditional_losses_2331266

inputs7
%dense1_matmul_readvariableop_resource:#@4
&dense1_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identity¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:#@*
dtype0w
dense1/MatMulMatMulinputs$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
dropout1/IdentityIdentitydense1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
output/MatMulMatMuldropout1/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
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

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
ñ
c
*__inference_dropout1_layer_call_fn_2331373

inputs
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2331058o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ë9
Ë

 __inference__traced_save_2331536
file_prefix,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
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
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop3
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
: ¥
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Î
valueÄBÁB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/3/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/3/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¥
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ½

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	
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

identity_1Identity_1:output:0*«
_input_shapes
: :#@:@:@:: : : : : : : : : : : :È:È:È:È:#@:@:@::#@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:#@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :!

_output_shapes	
:È:!

_output_shapes	
:È:!

_output_shapes	
:È:!

_output_shapes	
:È:$ 

_output_shapes

:#@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:#@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 

®
__inference_loss_fn_0_2331421J
8dense1_kernel_regularizer_square_readvariableop_resource:#@
identity¢/dense1/kernel/Regularizer/Square/ReadVariableOp¨
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8dense1_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
 
ª
D__inference_model_4_layer_call_and_return_conditional_losses_2331113

inputs 
dense1_2331089:#@
dense1_2331091:@ 
output_2331095:@
output_2331097:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢ dropout1/StatefulPartitionedCall¢output/StatefulPartitionedCallë
dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense1_2331089dense1_2331091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_2330974ê
 dropout1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2331058
output/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0output_2331095output_2331097*
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
GPU 2J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2330998~
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331089*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
: x
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331091*
_output_shapes
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp!^dropout1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs


ô
C__inference_output_layer_call_and_return_conditional_losses_2331410

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ë
)__inference_model_4_layer_call_fn_2331028	
input
unknown:#@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_2331017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
Ø
c
E__inference_dropout1_layer_call_and_return_conditional_losses_2331378

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À

(__inference_dense1_layer_call_fn_2331340

inputs
unknown:#@
	unknown_0:@
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_2330974o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
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

Ì
)__inference_model_4_layer_call_fn_2331235

inputs
unknown:#@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_2331113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ø
c
E__inference_dropout1_layer_call_and_return_conditional_losses_2330985

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 
©
D__inference_model_4_layer_call_and_return_conditional_losses_2331191	
input 
dense1_2331167:#@
dense1_2331169:@ 
output_2331173:@
output_2331175:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢ dropout1/StatefulPartitionedCall¢output/StatefulPartitionedCallê
dense1/StatefulPartitionedCallStatefulPartitionedCallinputdense1_2331167dense1_2331169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_2330974ê
 dropout1/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2331058
output/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0output_2331173output_2331175*
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
GPU 2J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2330998~
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331167*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
: x
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331169*
_output_shapes
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp!^dropout1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput


ô
C__inference_output_layer_call_and_return_conditional_losses_2330998

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
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
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
í
Ç
%__inference_signature_wrapper_2331319	
input
unknown:#@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCallÐ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2330944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
ã
Ü
"__inference__wrapped_model_2330944	
input?
-model_4_dense1_matmul_readvariableop_resource:#@<
.model_4_dense1_biasadd_readvariableop_resource:@?
-model_4_output_matmul_readvariableop_resource:@<
.model_4_output_biasadd_readvariableop_resource:
identity¢%model_4/dense1/BiasAdd/ReadVariableOp¢$model_4/dense1/MatMul/ReadVariableOp¢%model_4/output/BiasAdd/ReadVariableOp¢$model_4/output/MatMul/ReadVariableOp
$model_4/dense1/MatMul/ReadVariableOpReadVariableOp-model_4_dense1_matmul_readvariableop_resource*
_output_shapes

:#@*
dtype0
model_4/dense1/MatMulMatMulinput,model_4/dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%model_4/dense1/BiasAdd/ReadVariableOpReadVariableOp.model_4_dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0£
model_4/dense1/BiasAddBiasAddmodel_4/dense1/MatMul:product:0-model_4/dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
model_4/dense1/ReluRelumodel_4/dense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
model_4/dropout1/IdentityIdentity!model_4/dense1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$model_4/output/MatMul/ReadVariableOpReadVariableOp-model_4_output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0£
model_4/output/MatMulMatMul"model_4/dropout1/Identity:output:0,model_4/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model_4/output/BiasAdd/ReadVariableOpReadVariableOp.model_4_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
model_4/output/BiasAddBiasAddmodel_4/output/MatMul:product:0-model_4/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
model_4/output/SigmoidSigmoidmodel_4/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitymodel_4/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
NoOpNoOp&^model_4/dense1/BiasAdd/ReadVariableOp%^model_4/dense1/MatMul/ReadVariableOp&^model_4/output/BiasAdd/ReadVariableOp%^model_4/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2N
%model_4/dense1/BiasAdd/ReadVariableOp%model_4/dense1/BiasAdd/ReadVariableOp2L
$model_4/dense1/MatMul/ReadVariableOp$model_4/dense1/MatMul/ReadVariableOp2N
%model_4/output/BiasAdd/ReadVariableOp%model_4/output/BiasAdd/ReadVariableOp2L
$model_4/output/MatMul/ReadVariableOp$model_4/output/MatMul/ReadVariableOp:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput
â

D__inference_model_4_layer_call_and_return_conditional_losses_2331017

inputs 
dense1_2330975:#@
dense1_2330977:@ 
output_2330999:@
output_2331001:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallë
dense1/StatefulPartitionedCallStatefulPartitionedCallinputsdense1_2330975dense1_2330977*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_2330974Ú
dropout1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2330985
output/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0output_2330999output_2331001*
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
GPU 2J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2330998~
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2330975*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
: x
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2330977*
_output_shapes
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
Ý

¦
__inference_loss_fn_1_2331432D
6dense1_bias_regularizer_square_readvariableop_resource:@
identity¢-dense1/bias/Regularizer/Square/ReadVariableOp 
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOp6dense1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
À

(__inference_output_layer_call_fn_2331399

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallØ
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
GPU 2J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2330998o
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
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ß

D__inference_model_4_layer_call_and_return_conditional_losses_2331164	
input 
dense1_2331140:#@
dense1_2331142:@ 
output_2331146:@
output_2331148:
identity¢dense1/StatefulPartitionedCall¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢output/StatefulPartitionedCallê
dense1/StatefulPartitionedCallStatefulPartitionedCallinputdense1_2331140dense1_2331142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense1_layer_call_and_return_conditional_losses_2330974Ú
dropout1/PartitionedCallPartitionedCall'dense1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2330985
output/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0output_2331146output_2331148*
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
GPU 2J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2330998~
/dense1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331140*
_output_shapes

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
: x
-dense1/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense1_2331142*
_output_shapes
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^dense1/StatefulPartitionedCall.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#

_user_specified_nameinput


d
E__inference_dropout1_layer_call_and_return_conditional_losses_2331390

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2|[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
­+
¡
D__inference_model_4_layer_call_and_return_conditional_losses_2331304

inputs7
%dense1_matmul_readvariableop_resource:#@4
&dense1_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identity¢dense1/BiasAdd/ReadVariableOp¢dense1/MatMul/ReadVariableOp¢-dense1/bias/Regularizer/Square/ReadVariableOp¢/dense1/kernel/Regularizer/Square/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOp
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes

:#@*
dtype0w
dense1/MatMulMatMulinputs$dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
dense1/ReluReludense1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?
dropout1/dropout/MulMuldense1/Relu:activations:0dropout1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
dropout1/dropout/ShapeShapedense1/Relu:activations:0*
T0*
_output_shapes
:º
-dropout1/dropout/random_uniform/RandomUniformRandomUniformdropout1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed±ÿå)*
seed2{d
dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Á
dropout1/dropout/GreaterEqualGreaterEqual6dropout1/dropout/random_uniform/RandomUniform:output:0(dropout1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout1/dropout/CastCast!dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout1/dropout/Mul_1Muldropout1/dropout/Mul:z:0dropout1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
output/MatMulMatMuldropout1/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
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

:#@*
dtype0
 dense1/kernel/Regularizer/SquareSquare7dense1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:#@p
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
:@*
dtype0
dense1/bias/Regularizer/SquareSquare5dense1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:@g
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
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp.^dense1/bias/Regularizer/Square/ReadVariableOp0^dense1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2^
-dense1/bias/Regularizer/Square/ReadVariableOp-dense1/bias/Regularizer/Square/ReadVariableOp2b
/dense1/kernel/Regularizer/Square/ReadVariableOp/dense1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs

F
*__inference_dropout1_layer_call_fn_2331368

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2330985`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

Ì
)__inference_model_4_layer_call_fn_2331222

inputs
unknown:#@
	unknown_0:@
	unknown_1:@
	unknown_2:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_2331017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs"ÛL
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
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Y
Õ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	optimizer
loss
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer

&iter

'beta_1

(beta_2
	)decay
*learning_ratemZm[m\m]v^v_v`va"
	optimizer
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
Ê
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_4_layer_call_fn_2331028
)__inference_model_4_layer_call_fn_2331222
)__inference_model_4_layer_call_fn_2331235
)__inference_model_4_layer_call_fn_2331137À
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
D__inference_model_4_layer_call_and_return_conditional_losses_2331266
D__inference_model_4_layer_call_and_return_conditional_losses_2331304
D__inference_model_4_layer_call_and_return_conditional_losses_2331164
D__inference_model_4_layer_call_and_return_conditional_losses_2331191À
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
ËBÈ
"__inference__wrapped_model_2330944input"
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
2serving_default"
signature_map
:#@2dense1/kernel
:@2dense1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
­
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense1_layer_call_fn_2331340¢
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
í2ê
C__inference_dense1_layer_call_and_return_conditional_losses_2331363¢
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
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout1_layer_call_fn_2331368
*__inference_dropout1_layer_call_fn_2331373´
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
È2Å
E__inference_dropout1_layer_call_and_return_conditional_losses_2331378
E__inference_dropout1_layer_call_and_return_conditional_losses_2331390´
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
:@2output/kernel
:2output/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_output_layer_call_fn_2331399¢
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
í2ê
C__inference_output_layer_call_and_return_conditional_losses_2331410¢
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
´2±
__inference_loss_fn_0_2331421
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
´2±
__inference_loss_fn_1_2331432
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
<
0
1
2
3"
trackable_list_wrapper
<
B0
C1
D2
E3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÊBÇ
%__inference_signature_wrapper_2331319input"
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
+0
,1"
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
	Ftotal
	Gcount
H	variables
I	keras_api"
_tf_keras_metric
^
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api"
_tf_keras_metric
^
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"
_tf_keras_metric

Ttrue_positives
Utrue_negatives
Vfalse_positives
Wfalse_negatives
X	variables
Y	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
:È (2true_positives
:È (2true_negatives
 :È (2false_positives
 :È (2false_negatives
<
T0
U1
V2
W3"
trackable_list_wrapper
-
X	variables"
_generic_user_object
$:"#@2Adam/dense1/kernel/m
:@2Adam/dense1/bias/m
$:"@2Adam/output/kernel/m
:2Adam/output/bias/m
$:"#@2Adam/dense1/kernel/v
:@2Adam/dense1/bias/v
$:"@2Adam/output/kernel/v
:2Adam/output/bias/v
"__inference__wrapped_model_2330944g.¢+
$¢!

inputÿÿÿÿÿÿÿÿÿ#
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ£
C__inference_dense1_layer_call_and_return_conditional_losses_2331363\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ#
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 {
(__inference_dense1_layer_call_fn_2331340O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ#
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout1_layer_call_and_return_conditional_losses_2331378\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout1_layer_call_and_return_conditional_losses_2331390\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout1_layer_call_fn_2331368O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout1_layer_call_fn_2331373O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@<
__inference_loss_fn_0_2331421¢

¢ 
ª " <
__inference_loss_fn_1_2331432¢

¢ 
ª " ­
D__inference_model_4_layer_call_and_return_conditional_losses_2331164e6¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
D__inference_model_4_layer_call_and_return_conditional_losses_2331191e6¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
D__inference_model_4_layer_call_and_return_conditional_losses_2331266f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
D__inference_model_4_layer_call_and_return_conditional_losses_2331304f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_4_layer_call_fn_2331028X6¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_2331137X6¢3
,¢)

inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_2331222Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_4_layer_call_fn_2331235Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ£
C__inference_output_layer_call_and_return_conditional_losses_2331410\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_output_layer_call_fn_2331399O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_signature_wrapper_2331319p7¢4
¢ 
-ª*
(
input
inputÿÿÿÿÿÿÿÿÿ#"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ