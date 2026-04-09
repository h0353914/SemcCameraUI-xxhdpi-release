.class public final enum Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
.super Ljava/lang/Enum;
.source "UserSettingSelectability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final enum SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

.field public static final TAG:Ljava/lang/String; = "UserSettingSelectability"

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;


# instance fields
.field private final mIsUpdatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 14
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "FIXED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "UNAVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "SELECTABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const-string v1, "FORCE_CHANGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FORCE_CHANGED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->mIsUpdatable:Z

    return-void
.end method

.method public static getSelectability(I)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 59
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0

    .line 55
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0

    .line 51
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .locals 1

    .line 10
    const-class v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;
    .locals 1

    .line 10
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    return-object v0
.end method


# virtual methods
.method public isUpdatable()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->mIsUpdatable:Z

    return p0
.end method
