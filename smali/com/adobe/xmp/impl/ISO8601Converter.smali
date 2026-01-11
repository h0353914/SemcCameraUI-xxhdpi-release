.class public final Lcom/adobe/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    new-instance v0, Lcom/adobe/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)Lcom/adobe/xmp/XMPDateTime;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v0, p0}, Lcom/adobe/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    :cond_1
    const-string v1, "Invalid year in date string"

    const/16 v3, 0x270f

    invoke-virtual {v0, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after year"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v3

    if-ne v3, v2, :cond_4

    neg-int v1, v1

    :cond_4
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setYear(I)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid month in date string"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after month"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    :goto_1
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setMonth(I)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid day in date string"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v3

    const/16 v5, 0x54

    if-ne v3, v5, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after day"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a
    :goto_2
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setDay(I)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    return-object p1

    :cond_b
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid hour in date string"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setHour(I)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v5, 0x3b

    const/16 v6, 0x3a

    const/16 v7, 0x2b

    const/16 v8, 0x5a

    if-ne v1, v6, :cond_f

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid minute in date string"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v6, :cond_e

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v8, :cond_e

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v7, :cond_e

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v2, :cond_d

    goto :goto_3

    :cond_d
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after minute"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_e
    :goto_3
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setMinute(I)V

    :cond_f
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    return-object p1

    :cond_10
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v6, :cond_17

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid whole seconds in date string"

    invoke-virtual {v0, v1, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v9

    const/16 v10, 0x2e

    if-eqz v9, :cond_12

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v10, :cond_12

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v8, :cond_12

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-eq v9, v7, :cond_12

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v9

    if-ne v9, v2, :cond_11

    goto :goto_4

    :cond_11
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after whole seconds"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_12
    :goto_4
    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setSecond(I)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v10, :cond_19

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v1

    const-string v9, "Invalid fractional seconds in date string"

    const v10, 0x3b9ac9ff

    invoke-virtual {v0, v9, v10}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v10

    if-eq v10, v8, :cond_14

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v10

    if-eq v10, v7, :cond_14

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v10

    if-ne v10, v2, :cond_13

    goto :goto_5

    :cond_13
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after fractional second"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_14
    :goto_5
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->pos()I

    move-result v10

    sub-int/2addr v10, v1

    :goto_6
    const/16 v1, 0x9

    if-le v10, v1, :cond_15

    div-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_15
    :goto_7
    if-ge v10, v1, :cond_16

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_16
    invoke-interface {p1, v9}, Lcom/adobe/xmp/XMPDateTime;->setNanoSecond(I)V

    goto :goto_8

    :cond_17
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-eq v1, v8, :cond_19

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-eq v1, v7, :cond_19

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v2, :cond_18

    goto :goto_8

    :cond_18
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after time"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_19
    :goto_8
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    return-object p1

    :cond_1a
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v8, :cond_1b

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v7, :cond_1c

    const/4 v1, 0x1

    goto :goto_9

    :cond_1c
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result v1

    if-ne v1, v2, :cond_1f

    const/4 v1, -0x1

    :goto_9
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string v2, "Invalid time zone hour in date string"

    invoke-virtual {v0, v2, v3}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->ch()C

    move-result p0

    if-ne p0, v6, :cond_1d

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->skip()V

    const-string p0, "Invalid time zone minute in date string"

    invoke-virtual {v0, p0, v5}, Lcom/adobe/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_a

    :cond_1d
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, after time zone hour"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1e
    :goto_a
    move v11, v1

    move v1, p0

    move p0, v2

    move v2, v11

    goto :goto_c

    :cond_1f
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_20
    :goto_b
    move v1, p0

    move v2, v1

    :goto_c
    const v3, 0x36ee80

    mul-int/2addr p0, v3

    const v3, 0xea60

    mul-int/2addr v1, v3

    add-int/2addr p0, v1

    mul-int/2addr p0, v2

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/adobe/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ParseState;->hasNext()Z

    move-result p0

    if-nez p0, :cond_21

    return-object p1

    :cond_21
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Invalid date string, extra chars at end"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_22
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Parameter must not be null"

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static render(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/text/DecimalFormat;

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v3, "0000"

    invoke-direct {v1, v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "\'-\'00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getDay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTime()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getHour()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getMinute()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getSecond()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getNanoSecond()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const-string v4, ":00.#########"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/adobe/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const v2, 0x36ee80

    div-int v3, p0, v2

    rem-int/2addr p0, v2

    const v2, 0xea60

    div-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const-string v2, "+00;-00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
