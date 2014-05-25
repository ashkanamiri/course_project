%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CODE BOOK FOR TIDY DATASET --- CREATED ON  SAT MAY 24 14:17:00 2014 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ASHKAN AMIRI; MCMASTER UNIVERSITY; CANADA.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

This is a code book that describes variables of the tidy dataset.

The tidy dataset is extracted from a larger data set. The original data set represents data collected from the accelerometers of Samsung Galaxy S smartphones (Anguita et al., 2012).The original dataset and a full description of it data is available from the following link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Steps taken to prepare the tidy dataset:

1. The two components of the original dataset, namely, the training and testing sets are combined together. Each of the two sets are composed of a set of measured features, a aset of corresponding activity labels that define during which activity these measurements are recorded, and another set that identifies which subject has carried out the experiment.

2. A subset of the features (columns) of the original dataset is selected. The selected features are columns pertaining to mean value and standard deviation available in the original dataset.

3. For each activity label and each subject, features from the subset, described in 2, are averaged individually, thus collectively forming a row of a new dataset, namely, the tidy dataset.

4. The tidy dataset is then saved as a CSV file, using "," as the separator of its columns.

Note:
    These steps are carried out using the script "run_analysis.R". More details are provided in the file "REARME.md".


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Note: 
    1. Variables beginning with "t" correspond to measurements in time domain.
    2. Variables beginning with "f" correspond to fast Fourier transform (FFT) of measurements.

List of variables:

activity
	Activity label.
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

subject
	Identifier of the subject who carried out the experiment.
		1 .. 30

t.body.acc.mean.x
	Mean value of the body linear acceleration in the X-direction.

		0.22159824394 .. 0.3014610196

t.body.acc.mean.y
	Mean value of the body linear acceleration in the Y-direction.
		-0.0405139534294 .. -0.00130828765170213

t.body.acc.mean.z
	Mean value of the body linear acceleration in the Z-direction.
		-0.152513899520833 .. -0.07537846886

t.body.acc.std.x
	Standard deviation of the body linear acceleration in the X-direction.
		-0.996068635384615 .. 0.626917070512821

t.body.acc.std.y
	Standard deviation of the body linear acceleration in the Y-direction.
		-0.990240946666667 .. 0.616937015333333

t.body.acc.std.z
	Standard deviation of the body linear acceleration in the Z-direction.
		-0.987658662307692 .. 0.609017879074074

t.gravity.acc.mean.x
	Mean value of the gravity linear acceleration in the X-direction.
		-0.680043155060241 .. 0.974508732

t.gravity.acc.mean.y
	Mean value of the gravity linear acceleration in the y-direction.
		-0.479894842941176 .. 0.956593814210526

t.gravity.acc.mean.z
	Mean value of the gravity linear acceleration in the Z-direction.
		-0.49508872037037 .. 0.9578730416

t.gravity.acc.std.x
	Standard deviation of the gravity linear acceleration in the X-direction.
		-0.996764227384615 .. -0.829554947808219

t.gravity.acc.std.y
	Standard deviation of the gravity linear acceleration in the Y-direction.
		-0.99424764884058 .. -0.643578361424658

t.gravity.acc.std.z
	Standard deviation of the gravity linear acceleration in the Z-direction.
		-0.990957249538462 .. -0.610161166287671

t.body.acc.jerk.mean.x
	Mean value of the body linear acceleration jerk signal in the X-direction.
		0.0426880986186441 .. 0.130193043809524

t.body.acc.jerk.mean.y
	Mean value of the body linear acceleration jerk signal in the Y-direction.
		-0.0386872111282051 .. 0.056818586275

t.body.acc.jerk.mean.z
	Mean value of the body linear acceleration jerk signal in the Z-direction.
		-0.0674583919268293 .. 0.0380533591627451

t.body.acc.jerk.std.x
	Standard deviation of the body linear acceleration jerk signal in the X-direction.
		-0.994604542264151 .. 0.544273037307692

t.body.acc.jerk.std.y
	Standard deviation of the body linear acceleration jerk signal in the Y-direction.
		-0.989513565652174 .. 0.355306716915385

t.body.acc.jerk.std.z
	Standard deviation of the body linear acceleration jerk signal in the Z-direction.
		-0.993288313333333 .. 0.0310157077775926

t.body.gyro.mean.x
	Mean value of the body angular velocity in the X-direction.
		-0.205775427307692 .. 0.19270447595122

t.body.gyro.mean.y
	Mean value of the body angular velocity in the Y-direction.
		-0.204205356087805 .. 0.0274707556666667

t.body.gyro.mean.z
	Mean value of the body angular velocity in the Z-direction.
		-0.0724546025804878 .. 0.179102058245614

t.body.gyro.std.x
	Standard deviation of the body angular velocity in the X-direction.
		-0.994276591304348 .. 0.267657219333333

t.body.gyro.std.y
	Standard deviation of the body angular velocity in the Y-direction.
		-0.994210471914894 .. 0.476518714444444

t.body.gyro.std.z
	Standard deviation of the body angular velocity in the Z-direction.
		-0.985538363333333 .. 0.564875818162963

t.body.gyro.jerk.mean.x
	Mean value of the body angular velocity jerk signals in the X-direction.
		-0.157212539189362 .. -0.0220916265065217

t.body.gyro.jerk.mean.y
	Mean value of the body angular velocity jerk signals in the Y-direction.
		-0.0768089915604167 .. -0.0132022768074468

t.body.gyro.jerk.mean.z
	Mean value of the body angular velocity jerk signals in the Z-direction.
		-0.0924998531372549 .. -0.00694066389361702

t.body.gyro.jerk.std.x
	Standard deviation of the body angular velocity jerk signals in the X-direction.
		-0.99654254057971 .. 0.179148649684615

t.body.gyro.jerk.std.y
	Standard deviation of the body angular velocity jerk signals in the Y-direction.
		-0.997081575652174 .. 0.295945926186441

t.body.gyro.jerk.std.z
	Standard deviation of the body angular velocity jerk signals in the Z-direction.
		-0.995380794637681 .. 0.193206498960417

t.body.acc.mag.mean
	Mean value of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.986493196666667 .. 0.644604325128205

t.body.acc.mag.std
	Mean value of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.986464542615385 .. 0.428405922622222

t.gravity.acc.mag.mean
	Mean value of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.986493196666667 .. 0.644604325128205

t.gravity.acc.mag.std
	Standard deviation of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.986464542615385 .. 0.428405922622222

t.body.acc.jerk.mag.mean
	Mean value of the body linear acceleration magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.99281471515625 .. 0.434490400974359

t.body.acc.jerk.mag.std
	Standard deviation of the body linear acceleration magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.994646916811594 .. 0.450612065720513

t.body.gyro.mag.mean
	Mean value of the body angular velocity magnitude (Euclidean norm in XYZ-directions).
		-0.980740846769231 .. 0.418004608615385

t.body.gyro.mag.std
	Standard deviation of the body angular velocity magnitude (Euclidean norm in XYZ-directions).
		-0.981372675614035 .. 0.299975979851852

t.body.gyro.jerk.mag.mean
	Mean value of the body angular velocity magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.997322526811594 .. 0.0875816618205128

t.body.gyro.jerk.mag.std
	Standard deviation of the body angular velocity magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.997666071594203 .. 0.250173204117966

f.body.acc.mean.x
	FFT: Mean value of the body linear acceleration in the X-direction.
		-0.995249932641509 .. 0.537012022051282

f.body.acc.mean.y
	FFT: Mean value of the body linear acceleration in the Y-direction.
		-0.989034304057971 .. 0.524187686888889

f.body.acc.mean.z
	FFT: Mean value of the body linear acceleration in the Z-direction.
		-0.989473926666667 .. 0.280735952206667

f.body.acc.std.x
	FFT: Standard deviation of the body linear acceleration in the X-direction.
		-0.996604570307692 .. 0.658506543333333

f.body.acc.std.y
	FFT: Standard deviation of the body linear acceleration in the Y-direction.
		-0.990680395362319 .. 0.560191344

f.body.acc.std.z
	FFT: Standard deviation of the body linear acceleration in the Z-direction.
		-0.987224804307692 .. 0.687124163703704

f.body.acc.jerk.mean.x
	FFT: Mean value of the body linear acceleration jerk signal in the X-direction.
		-0.994630797358491 .. 0.474317256051282

f.body.acc.jerk.mean.y
	FFT: Mean value of the body linear acceleration jerk signal in the Y-direction.
		-0.989398823913043 .. 0.276716853307692

f.body.acc.jerk.mean.z
	FFT: Mean value of the body linear acceleration jerk signal in the Z-direction.
		-0.992018447826087 .. 0.157775692377778

f.body.acc.jerk.std.x
	FFT: Standard deviation of the body linear acceleration jerk signal in the X-direction.
		-0.995073759245283 .. 0.476803887476923

f.body.acc.jerk.std.y
	FFT: Standard deviation of the body linear acceleration jerk signal in the Y-direction.
		-0.990468082753623 .. 0.349771285415897

f.body.acc.jerk.std.z
	FFT: Standard deviation of the body linear acceleration jerk signal in the Z-direction.
		-0.993107759855072 .. -0.00623647528983051

f.body.gyro.mean.x
	FFT: Mean value of the body angular velocity in the X-direction.
		-0.99312260884058 .. 0.474962448333333

f.body.gyro.mean.y
	FFT: Mean value of the body angular velocity in the Y-direction.
		-0.994025488297872 .. 0.328817010088889

f.body.gyro.mean.z
	FFT: Mean value of the body angular velocity in the Z-direction.
		-0.985957788 .. 0.492414379822222

f.body.gyro.std.x
	FFT: Standard deviation of the body angular velocity in the X-direction.
		-0.994652185217391 .. 0.196613286661538

f.body.gyro.std.y
	FFT: Standard deviation of the body angular velocity in the Y-direction.
		-0.994353086595745 .. 0.646233637037037

f.body.gyro.std.z
	FFT: Standard deviation of the body angular velocity in the Z-direction.
		-0.986725274871795 .. 0.522454216314815

f.body.acc.mag.mean
	FFT: Mean value of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.986800645362319 .. 0.586637550769231

f.body.acc.mag.std
	FFT: Standard deviation of the body linear acceleration magnitude (Euclidean norm in XYZ-directions).
		-0.987648484461539 .. 0.178684580868889

f.body.body.acc.jerk.mag.mean
	FFT: Mean value of the body linear acceleration magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.993998275797101 .. 0.538404846128205

f.body.body.acc.jerk.mag.std
	FFT: Standard deviation of the body linear acceleration magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.994366667681159 .. 0.316346415348718

f.body.body.gyro.mag.mean
	FFT: Mean value of the body angular velocity magnitude (Euclidean norm in XYZ-directions).
		-0.986535242105263 .. 0.203979764835897

f.body.body.gyro.mag.std
	FFT: Standard deviation of the body angular velocity magnitude (Euclidean norm in XYZ-directions).
		-0.981468841692308 .. 0.236659662496296

f.body.body.gyro.jerk.mag.mean
	FFT: Mean value of the body angular velocity magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.997617389275362 .. 0.146618569064407

f.body.body.gyro.jerk.mag.std
	FFT: Standard deviation of the body angular velocity magnitude of jerk signals (Euclidean norm in XYZ-directions).
		-0.99758523057971 .. 0.287834616098305

angle.t.body.acc.jerk.mean.gravity.mean
	Mean value of the angle between body linear acceleration jerk signals and mean gravity acceleration.
		-0.120553975717391 .. 0.203259965863014

angle.t.body.gyro.mean.gravity.mean
	Mean value of the angle between body angular velocity and mean gravity acceleration.
		-0.389305120341463 .. 0.444101172307692

angle.t.body.gyro.jerk.mean.gravity.mean
	Mean value of the angle between body angular velocity jerk signals and mean gravity acceleration.
		-0.223672056052174 .. 0.182384802705085

angle.x.gravity.mean
	Mean value of the angle between the gravity acceleration and X-direction.
		-0.947116527659574 .. 0.737784354819277

angle.y.gravity.mean
	Mean value of the angle between the gravity acceleration and Y-direction.
		-0.874567701929825 .. 0.42476122745098

angle.z.gravity.mean
	Mean value of the angle between the gravity acceleration and Z-direction.
		-0.873649367 .. 0.390444368518519

