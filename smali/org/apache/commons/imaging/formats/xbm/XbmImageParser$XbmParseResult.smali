.class Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;
.super Ljava/lang/Object;
.source "XbmImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/xbm/XbmImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XbmParseResult"
.end annotation


# instance fields
.field cParser:Lorg/apache/commons/imaging/common/BasicCParser;

.field xbmHeader:Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmHeader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/apache/commons/imaging/formats/xbm/XbmImageParser$XbmParseResult;-><init>()V

    return-void
.end method
