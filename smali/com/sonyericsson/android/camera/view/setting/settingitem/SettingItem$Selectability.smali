.class public final enum Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
.super Ljava/lang/Enum;
.source "SettingItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Selectability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field public static final enum RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field public static final enum SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field public static final enum UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
    .locals 3

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    const-string v1, "SELECTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    const-string v1, "UNSELECTABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    const-string v1, "RESTRICTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 22
    invoke-static {}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->$values()[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->$VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
    .locals 1

    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
    .locals 1

    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->$VALUES:[Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-object v0
.end method
