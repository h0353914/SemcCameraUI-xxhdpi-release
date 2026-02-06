plugins {
    id("com.android.application")
    id("kotlin-android")
}

android {
    compileSdkVersion(28)

    defaultConfig {
        applicationId = "com.sonyericsson.android.camera"
        minSdkVersion(28)
        targetSdkVersion(28)
        versionCode = 4472847
        versionName = "2.2.2.A.0.15"
        // 原始 APK 的 BuildConfig 含 FLAVOR = ""（AGP 只在有 productFlavors 時自動生成）
        buildConfigField("String", "FLAVOR", "\"\"")
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
            isShrinkResources = false
            
            // Match original APK build
            isDebuggable = false
        }
        getByName("debug") {
            isMinifyEnabled = false
            isDebuggable = true
        }
    }

    compileOptions {
        setSourceCompatibility(JavaVersion.VERSION_1_8)
        setTargetCompatibility(JavaVersion.VERSION_1_8)
    }

    // 使用 JDK 8 的 javac 編譯（原始 APK 使用 JDK 8）
    // Gradle daemon 仍用 JDK 11（處理依賴下載），但 javac 用 JDK 8
    tasks.withType(JavaCompile::class.java) {
        options.isFork = true
        options.forkOptions.javaHome = file("/home/h/lineageos/prebuilts/jdk/jdk8/linux-x86")
    }

    lintOptions {
        isAbortOnError = false
        isCheckReleaseBuilds = false
    }

    // 原始 APK 的 Kotlin module 名是 "SemcCameraUI"，不是 Gradle 預設的 "app"
    tasks.withType(org.jetbrains.kotlin.gradle.tasks.KotlinCompile::class.java) {
        kotlinOptions.freeCompilerArgs = listOf("-module-name", "SemcCameraUI_release")
    }

    aaptOptions {
        additionalParameters("--stable-ids", file("stable-ids.txt").absolutePath)
        ignoreAssetsPattern = "!.svn:!.git:!.ds_store:!*.scc:.*:!CVS:!thumbs.db:!picasa.ini:!*~"
        noCompress("apk", "so")
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/java", "src/main/kotlin")
            jniLibs.srcDirs("src/main/jniLibs")
        }
    }
    
    packagingOptions {
        exclude("META-INF/DEPENDENCIES")
        exclude("META-INF/LICENSE")
        exclude("META-INF/LICENSE.txt")
        exclude("META-INF/NOTICE")
        exclude("META-INF/NOTICE.txt")
        pickFirst("AndroidManifest.xml")
        doNotStrip("**/*.so")
    }
}

dependencies {
    // Using bundled source for commons-imaging (attempting fixes)
    // implementation("org.apache.commons:commons-imaging:1.0-alpha2")
    // protobuf-javalite: smali 版的 nano 碼引用 CodedOutputStream/MessageLite 等類，
    // 但這些類不在 APK 中（來自系統框架），所以用 compileOnly 不打包進 APK
    compileOnly("com.google.protobuf:protobuf-javalite:3.8.0")
    // Android 框架內建 protobuf 有 getGeneratedRegistry() 但標準 Maven 版沒有，
    // 此 stub jar 僅提供編譯時缺少的方法簽名（必須在 javalite 之前載入以覆蓋）
    compileOnly(files("libs/protobuf-generated-registry-stub.jar"))
    // java.awt stubs: commons-imaging 需要 java.awt 編譯，但原始 APK 不包含這些類
    compileOnly(files("libs/java-awt-stubs.jar"))
    // android/os/storage + protobuf annotation stubs: 原始 APK 不包含這些類
    compileOnly(files("libs/extra-stubs.jar"))
    // API stub 類: Idd、ContributionContract、HelpUtils、VibrationEffect、ImagingOpException
    compileOnly(files("libs/api-stubs.jar"))
    // kotlin-stdlib: 使用原版預編譯 JAR（而非從反編譯的 Java 源碼重新編譯）
    // 原始 APK 的 kotlin/ 類來自 JetBrains 預編譯的 kotlin-stdlib-1.2.60.jar
    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.2.60")
    // kotlin-stdlib-jdk7: AutoCloseableKt, JDK7PlatformImplementations
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk7:1.2.60")
    implementation("com.android.support:appcompat-v7:28.0.0")
    implementation("com.android.support:support-v4:28.0.0")
    implementation("com.android.support:recyclerview-v7:28.0.0")
    // design:28.0.0 - AGP 3.6+ 支援 AAR 作為 compileOnly
    // CoordinatorLayout 由 coordinatorlayout:28.0.0 提供（已是 implementation）
    // 原始 APK 不包含 design 的其他類別（AppBarLayout/TabLayout/Snackbar 等）
    compileOnly("com.android.support:design:28.0.0")
    implementation("com.android.support:coordinatorlayout:28.0.0")
    implementation("com.android.support:preference-v7:28.0.0")
    implementation("com.android.support:preference-v14:28.0.0")
    // 顯式添加支持庫註解依賴以保留 @RestrictTo, @NonNull 等註解
    implementation("com.android.support:support-annotations:28.0.0")
    
    // GMS: bundled as source
    // implementation("com.google.android.gms:play-services-base:8.1.0")
    // gson: smali 版的 Gson 欄位分析顯示為 2.2.x 版本（無 complexMapKeySerialization）
    implementation("com.google.code.gson:gson:2.2.4")
}

configurations.all {
    resolutionStrategy {
        force("com.android.support:support-annotations:28.0.0")
    }
    // 原始 APK 不包含 livedata 擴展類（ComputableLiveData、MediatorLiveData、Transformations）
    // 但保留 livedata-core（LiveData、MutableLiveData、Observer）
    exclude(group = "android.arch.lifecycle", module = "livedata")
}

// livedata-core 是 livedata 的傳遞依賴，排除 livedata 後需顯式保留
dependencies {
    implementation("android.arch.lifecycle:livedata-core:1.1.1")
}
