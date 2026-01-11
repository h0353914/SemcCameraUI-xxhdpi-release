.class public Lcom/sonymobile/securedatamanager/SecureDataManagerException;
.super Ljava/lang/Exception;


# static fields
.field public static final CUSTOM_MESSAGE:I = -0x1

.field public static final NATIVE_ERROR_GENERIC:I = 0x1

.field public static final NATIVE_ERROR_INVALID_PARAM:I = 0x2

.field public static final NATIVE_ERROR_SECURITY_ERROR:I = 0x3

.field public static final NATIVE_ERROR_SERVICE:I = 0x7


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
