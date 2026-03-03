pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    parameters {
        string(name: 'RELEASE', defaultValue: 'false', description: 'Set to true for a release build')
    }
    stages {
        stage('Build Native') {
            steps {
                sh "cmake -DRELEASE=${params.RELEASE} -B build.native -S ."
                sh "cmake --build build.native"
            }
        }
        stage('Build PowerPC') {
            steps {
                // Using the toolchain file logic from your screenshots
                sh "cmake -DCMAKE_TOOLCHAIN_FILE=powerpc_toolchain.cmake -DRELEASE=${params.RELEASE} -B build.ppc -S ."
                sh "cmake --build build.ppc"
            }
        }
    }
}
