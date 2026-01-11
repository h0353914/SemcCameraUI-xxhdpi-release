.class final Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;
.super Ljava/lang/Object;
.source "HuffmanTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field empty:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;->empty:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree$Node;-><init>()V

    return-void
.end method
