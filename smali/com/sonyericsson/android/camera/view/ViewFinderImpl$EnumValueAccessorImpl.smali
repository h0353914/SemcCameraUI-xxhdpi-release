.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumValueAccessorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private final mSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 0

    .line 9303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9304
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    .line 9305
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;-><init>(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 9310
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9296
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->get()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public reset()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .locals 0

    .line 9296
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->reset()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9315
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 9296
    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method

.method public values()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 9325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mSettings:Lcom/sonyericsson/android/camera/setting/UserSettings;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic values()[Ljava/lang/Object;
    .locals 0

    .line 9296
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$EnumValueAccessorImpl;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method
