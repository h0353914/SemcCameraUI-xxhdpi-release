.class Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;
.super Ljava/lang/Object;
.source "XpmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xpm/XpmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XpmParseResult"
.end annotation


# instance fields
.field cParser:Lorg/apache/commons/imaging/common/BasicCParser;

.field xpmHeader:Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmHeader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$1;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/xpm/XpmImageParser$XpmParseResult;-><init>()V

    return-void
.end method
