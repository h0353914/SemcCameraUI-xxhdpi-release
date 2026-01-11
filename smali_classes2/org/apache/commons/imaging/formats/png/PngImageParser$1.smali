.class synthetic Lorg/apache/commons/imaging/formats/png/PngImageParser$1;
.super Ljava/lang/Object;
.source "PngImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod:[I

.field static final synthetic $SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 620
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->values()[Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->NONE:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$InterlaceMethod:[I

    sget-object v3, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ADAM7:Lorg/apache/commons/imaging/formats/png/InterlaceMethod;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/InterlaceMethod;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    :catch_1
    invoke-static {}, Lorg/apache/commons/imaging/formats/png/PngColorType;->values()[Lorg/apache/commons/imaging/formats/png/PngColorType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    :try_start_2
    sget-object v3, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    sget-object v2, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->INDEXED_COLOR:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->GREYSCALE_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/apache/commons/imaging/formats/png/PngImageParser$1;->$SwitchMap$org$apache$commons$imaging$formats$png$PngColorType:[I

    sget-object v1, Lorg/apache/commons/imaging/formats/png/PngColorType;->TRUE_COLOR_WITH_ALPHA:Lorg/apache/commons/imaging/formats/png/PngColorType;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/png/PngColorType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
