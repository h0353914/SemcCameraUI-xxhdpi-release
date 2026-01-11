.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 12

    .line 42
    invoke-static {p1}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    .line 43
    const-string p1, "WIFI:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x5

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 47
    const-string p1, "S:"

    const/16 v1, 0x3b

    const/4 v2, 0x0

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 48
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "P:"

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    .line 52
    const-string p1, "T:"

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 54
    const-string p1, "nopass"

    :cond_2
    move-object v4, p1

    .line 56
    const-string p1, "H:"

    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 57
    const-string v0, "I:"

    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    .line 58
    const-string v0, "A:"

    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    .line 59
    const-string v0, "E:"

    invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-static {p1, p0, v1, v2}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    .line 61
    new-instance p0, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method
