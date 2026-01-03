plugins {
    id("com.android.application")
//    id("com.google.gms.google-services")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.abdulabbozov.multi_scheme_demo"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    flavorDimensions += "app"

    productFlavors {
        create("a") {
            dimension = "app"
            applicationId = "com.abdulabbozov.multi_scheme_demo.a"
            resValue("string", "app_name", "A")
        }

        create("b") {
            dimension = "app"
            applicationId = "com.abdulabbozov.multi_scheme_demo.b"
            resValue("string", "app_name", "B")
        }
    }

    defaultConfig {
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
