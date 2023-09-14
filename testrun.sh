#!/bin/sh
/usr/bin/time -f 'Test Plain %e %U %S' sh -c 'docker build -f Dockerfile.plain -t demo_plain:0.1.0 .'
/usr/bin/time -f 'Test Multistage %e %U %S' sh -c 'docker build -f Dockerfile.multistage -t demo_multistage:0.1.0 .'
/usr/bin/time -f 'Test Chef %e %U %S' sh -c 'docker build -f Dockerfile.chef -t demo_chef:0.1.0 .'
/usr/bin/time -f 'Test MUSL %e %U %S' sh -c 'docker build -f Dockerfile.musl -t demo_musl:0.1.0 .'
/usr/bin/time -f 'Test Distroless %e %U %S' sh -c 'docker build -f Dockerfile.distroless -t demo_distroless:0.1.0 .'
/usr/bin/time -f 'Test Upx %e %U %S' sh -c 'docker build -f Dockerfile.upx -t demo_upx:0.1.0 .'
