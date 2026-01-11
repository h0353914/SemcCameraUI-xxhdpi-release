.class final enum Lcom/sonymobile/camera/faultdetector/c$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/camera/faultdetector/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sonymobile/camera/faultdetector/c$c;

.field public static final enum b:Lcom/sonymobile/camera/faultdetector/c$c;

.field private static final synthetic j:[Lcom/sonymobile/camera/faultdetector/c$c;


# instance fields
.field final c:I

.field final d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field final e:Z

.field final f:Z

.field final g:F

.field final h:I

.field final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v10, Lcom/sonymobile/camera/faultdetector/c$c;

    sget v3, Lcom/sonymobile/camera/faultdetector/R$raw;->data2:I

    sget-object v4, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v8, 0x0

    const-string v9, "IF"

    const-string v1, "IN_HOUSE_FAULT_PHOTO_DETECTOR"

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/camera/faultdetector/c$c;-><init>(Ljava/lang/String;IILcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;ZZFILjava/lang/String;)V

    sput-object v10, Lcom/sonymobile/camera/faultdetector/c$c;->a:Lcom/sonymobile/camera/faultdetector/c$c;

    new-instance v0, Lcom/sonymobile/camera/faultdetector/c$c;

    sget v14, Lcom/sonymobile/camera/faultdetector/R$raw;->data1:I

    sget-object v15, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/16 v19, 0x80

    const-string v20, "KP"

    const-string v12, "KEY_POINT_DETECTOR"

    const/4 v13, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x3c000000    # 0.0078125f

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/sonymobile/camera/faultdetector/c$c;-><init>(Ljava/lang/String;IILcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;ZZFILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c$c;->b:Lcom/sonymobile/camera/faultdetector/c$c;

    filled-new-array {v10, v0}, [Lcom/sonymobile/camera/faultdetector/c$c;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/camera/faultdetector/c$c;->j:[Lcom/sonymobile/camera/faultdetector/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;ZZFILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "ZZFI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sonymobile/camera/faultdetector/c$c;->c:I

    iput-object p4, p0, Lcom/sonymobile/camera/faultdetector/c$c;->d:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-boolean p5, p0, Lcom/sonymobile/camera/faultdetector/c$c;->e:Z

    iput-boolean p6, p0, Lcom/sonymobile/camera/faultdetector/c$c;->f:Z

    iput p7, p0, Lcom/sonymobile/camera/faultdetector/c$c;->g:F

    iput p8, p0, Lcom/sonymobile/camera/faultdetector/c$c;->h:I

    iput-object p9, p0, Lcom/sonymobile/camera/faultdetector/c$c;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/camera/faultdetector/c$c;
    .locals 1

    const-class v0, Lcom/sonymobile/camera/faultdetector/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/camera/faultdetector/c$c;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/camera/faultdetector/c$c;
    .locals 1

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$c;->j:[Lcom/sonymobile/camera/faultdetector/c$c;

    invoke-virtual {v0}, [Lcom/sonymobile/camera/faultdetector/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/camera/faultdetector/c$c;

    return-object v0
.end method
