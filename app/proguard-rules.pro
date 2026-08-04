# R8 配置：取代 d8 做 dex，利用 R8 保留 BUILD 可見性註解（d8 會移除）
# 此配置使 identical smali 從 945（d8 only）提升到 1220
# 啟用 R8 但停用所有優化（僅用於 dex 轉換 + 註解保留）
-dontshrink
-dontoptimize
-dontobfuscate

# 保留所有屬性
-keepattributes *Annotation*
-keepattributes RuntimeVisibleAnnotations,RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations,RuntimeInvisibleParameterAnnotations
-keepattributes AnnotationDefault
-keepattributes SourceFile,LineNumberTable
-keepattributes InnerClasses,EnclosingMethod,Signature
-keepattributes Exceptions,Deprecated,Synthetic,MethodParameters

# 抑制缺失類型警告
-dontwarn java.awt.**
-dontwarn java.awt.image.**
-dontwarn java.awt.color.**
-dontwarn javax.imageio.**
-dontwarn org.apache.commons.imaging.ImagingOpException

# 保留所有類別和成員
-keep class ** { *; }