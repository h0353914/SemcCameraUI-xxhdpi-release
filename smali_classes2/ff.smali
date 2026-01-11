.class final Lff;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p0, Lec;

    .line 6
    check-cast p1, Leb;

    .line 7
    invoke-virtual {p0}, Lec;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lec;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object v0, Lec;->b:Lec;

    invoke-virtual {v0}, Lec;->a()Lec;

    move-result-object v0

    return-object v0
.end method

.method static a(Lck;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lfe;

    .line 20
    invoke-direct {v0, p0}, Lfe;-><init>(Lck;)V

    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Lfe;->a()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0}, Lfe;->a()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lfe;->a:Lck;

    .line 23
    invoke-virtual {v2, v1}, Lck;->a(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x7e

    if-gt v2, v4, :cond_1

    int-to-char v2, v2

    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 26
    :pswitch_0
    const-string v2, "\\r"

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v2, "\\f"

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v2, "\\v"

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    const-string v2, "\\n"

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string v2, "\\t"

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    const-string v2, "\\b"

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const-string v2, "\\a"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    :cond_2
    const-string v2, "\\\\"

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v2, "\\\'"

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v2, "\\\""

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 2
    check-cast p0, Lec;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lea;
    .locals 0

    .line 3
    check-cast p0, Leb;

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    check-cast p0, Lec;

    .line 12
    check-cast p1, Lec;

    .line 13
    invoke-virtual {p1}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lec;->a:Z

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lec;->a()Lec;

    move-result-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lec;->c()V

    .line 16
    invoke-virtual {p1}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Lec;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 4
    check-cast p0, Lec;

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    check-cast p0, Lec;

    iget-boolean p0, p0, Lec;->a:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p0, Lec;

    invoke-virtual {p0}, Lec;->b()V

    return-void
.end method
