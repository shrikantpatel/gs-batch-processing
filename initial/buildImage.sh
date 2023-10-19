docker rmi -f quay.io/shripatel1919/batch-app:latest
cd ~/projects/gs-batch-processing/initial

rm -rf build/dependency
rm -rf build/libs

gradle bootJar

mkdir build/dependency
cd build/dependency

jar -xf ../libs/*.jar

cd ~/projects/gs-batch-processing/initial
docker build --platform=linux/amd64 -t quay.io/shripatel1919/batch-app:latest .
docker push quay.io/shripatel1919/batch-app:latest
