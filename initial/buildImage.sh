cd ~/projects/gs-batch-processing/initial

rm -rf build/dependency
rm -rf build/libs

gradle bootJar

mkdir build/dependency
cd build/dependency

jar -xf ../libs/*.jar

cd ~/projects/gs-batch-processing/initial
docker build -t shrikantpatel/myapp .