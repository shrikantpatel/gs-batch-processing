FROM registry.access.redhat.com/ubi8/openjdk-17
VOLUME /tmp
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app

# Set permissions to the /go folder (for OpenShift)
#RUN chgrp -R 0 /app && chmod -R g+rwX /app

# OpenShift uses root group instead of root user
USER 1001

# Command to run when container starts up
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.example.batchprocessing.BatchProcessingApplication"]
CMD java -cp /app:/app/lib/* com.example.batchprocessing.BatchProcessingApplication