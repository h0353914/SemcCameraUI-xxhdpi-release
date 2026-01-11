.class public Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory;
.super Ljava/lang/Object;
.source "OnScreenButtonItemFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;
    .locals 9

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$1;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$onscreenbutton$OnScreenButtonItemFactory$ButtonType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This type is not supported. type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008a

    const/4 v7, 0x0

    const v3, 0x7f080397

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 283
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008d

    const/4 v7, 0x0

    const v3, 0x7f08039a

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 274
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f080398

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 265
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008a

    const/4 v7, 0x0

    const v3, 0x7f080397

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 256
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f0086

    const/4 v7, 0x0

    const v3, 0x7f080396

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 247
    :pswitch_5
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008d

    const/4 v7, 0x0

    const v3, 0x7f080399

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 238
    :pswitch_6
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008d

    const/4 v7, 0x0

    const v3, 0x7f080334

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 229
    :pswitch_7
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008e

    const/4 v7, 0x0

    const v3, 0x7f0803a1

    const v4, 0x7f0803a1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 220
    :pswitch_8
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008e

    const/4 v7, 0x0

    const v3, 0x7f080376

    const v4, 0x7f080377

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 211
    :pswitch_9
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f08037b

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 202
    :pswitch_a
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f080379

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 193
    :pswitch_b
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f080326

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 184
    :pswitch_c
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008b

    const/4 v7, 0x0

    const v3, 0x7f080105

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 175
    :pswitch_d
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008b

    const/4 v7, 0x0

    const v3, 0x7f08010a

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 166
    :pswitch_e
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008b

    const/4 v7, 0x0

    const v3, 0x7f080339

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 157
    :pswitch_f
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f0086

    const/4 v7, 0x0

    const v3, 0x7f08032f

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 148
    :pswitch_10
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008a

    const/4 v7, 0x0

    const v3, 0x7f080330

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 139
    :pswitch_11
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008d

    const/4 v7, 0x0

    const v3, 0x7f080338

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 130
    :pswitch_12
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008d

    const/4 v7, 0x0

    const v3, 0x7f080332

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 121
    :pswitch_13
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008a

    const/4 v7, 0x0

    const v3, 0x7f080331

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 112
    :pswitch_14
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f080327

    const v4, 0x7f080328

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 103
    :pswitch_15
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v3, 0x7f0802ff

    const v4, 0x7f080300

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 94
    :pswitch_16
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v3, 0x7f0802fd

    const v4, 0x7f0802fe

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 85
    :pswitch_17
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v3, 0x7f080301

    const v4, 0x7f080302

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 76
    :pswitch_18
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v3, 0x7f0802fb

    const v4, 0x7f0802fc

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 67
    :pswitch_19
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v3, 0x7f0802fb

    const v4, 0x7f0802fc

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    .line 58
    :pswitch_1a
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;

    new-instance v8, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;

    const v6, 0x7f0f008f

    const/4 v7, 0x0

    const v3, 0x7f08031e

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;-><init>(IIIILjava/lang/String;)V

    invoke-direct {v0, p0, v8, p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$ImmutableButtonItem;-><init>(Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createMutableButton(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;
    .locals 2

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$MutableButtonItem;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V

    return-object v0
.end method
