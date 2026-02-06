# -dontshrink
# -dontoptimize
-dontobfuscate

# Preserve annotation metadata - 保留所有註解信息以匹配原版
-keepattributes *Annotation*
-keepattributes RuntimeVisibleAnnotations,RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations,RuntimeInvisibleParameterAnnotations
-keepattributes AnnotationDefault

# Preserve support library specific annotations
-keep @interface android.support.annotation.**
-keep @interface androidx.annotation.**

# Preserve source and inner class metadata - 保留行號信息
-keepattributes SourceFile,LineNumberTable
-keepattributes InnerClasses,EnclosingMethod,Signature

# Suppress missing desktop AWT/ImageIO types from commons-imaging.
-dontwarn java.awt.**
-dontwarn java.awt.image.**
-dontwarn java.awt.color.**
-dontwarn javax.imageio.**

# Keep duolingo rtlviewpager members to avoid synthetic/accessor removal.
-keep class com.duolingo.open.rtlviewpager.RtlViewPager { *; }
-keep class com.duolingo.open.rtlviewpager.DelegatingPagerAdapter { *; }
-keep class com.duolingo.open.rtlviewpager.** { *; }

# Keep all support library classes and their annotations
-keep class android.support.** { *; }
-keep class androidx.** { *; }

# Keep application classes

# Targeted Keep rules to match Original APK structure
-keep class com.sonyericsson.** { *; }
-keep class android.support.** { *; }
-keep class androidx.** { *; }
-keep class com.google.** { *; }
# Keep duolingo classes specifically (excludes R classes by omission)
-keep class com.duolingo.open.rtlviewpager.RtlViewPager { *; }
-keep class com.duolingo.open.rtlviewpager.RtlViewPager$** { *; }
-keep class com.duolingo.open.rtlviewpager.DelegatingPagerAdapter { *; }



