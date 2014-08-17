.class Landroid/hardware/ssp/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static intToByteArr(II)[B
    .locals 5
    .parameter "value"
    .parameter "size"

    .prologue
    .line 151
    const/4 v4, 0x4

    if-le p1, v4, :cond_1

    .line 152
    const/4 v3, 0x0

    .line 168
    :cond_0
    return-object v3

    .line 155
    :cond_1
    new-array v0, p1, [B

    .line 157
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 158
    mul-int/lit8 v4, v1, 0x8

    shr-int v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    new-array v3, p1, [B

    .line 162
    .local v3, result:[B
    array-length v2, v0

    .line 164
    .local v2, len:I
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 165
    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v0, v2

    aput-byte v4, v3, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected static strToDouble(Ljava/lang/String;)D
    .locals 5
    .parameter "value"

    .prologue
    const-wide/16 v3, 0x0

    .line 124
    if-nez p0, :cond_0

    move-wide v1, v3

    .line 138
    :goto_0
    return-wide v1

    .line 128
    :cond_0
    const-wide/16 v1, 0x0

    .line 131
    .local v1, resultDouble:D
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v1, v3

    .line 133
    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v1, v3

    .line 135
    goto :goto_0
.end method

.method protected static strToFloat(Ljava/lang/String;)F
    .locals 7
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 62
    if-nez p0, :cond_0

    move v4, v5

    .line 84
    :goto_0
    return v4

    .line 66
    :cond_0
    const/4 v4, 0x0

    .line 69
    .local v4, resultFloat:F
    :try_start_0
    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 71
    .local v2, index:I
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, numerator:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, denominator:I
    int-to-float v5, v3

    int-to-float v6, v0

    div-float v4, v5, v6

    .line 75
    goto :goto_0

    .line 76
    .end local v0           #denominator:I
    .end local v2           #index:I
    .end local v3           #numerator:I
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v5

    .line 79
    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v4, v5

    .line 81
    goto :goto_0
.end method

.method protected static strToInt(Ljava/lang/String;)I
    .locals 7
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p0, :cond_0

    move v3, v4

    .line 51
    :goto_0
    return v3

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 36
    .local v3, resultInt:I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0X"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, hexValue:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 39
    goto :goto_0

    .end local v2           #hexValue:Ljava/lang/String;
    :cond_1
    const-string v5, "B"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, binValue:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 42
    goto :goto_0

    .line 43
    .end local v0           #binValue:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 46
    goto :goto_0

    .line 47
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v3, v4

    .line 48
    goto :goto_0
.end method

.method protected static strToLong(Ljava/lang/String;)J
    .locals 8
    .parameter "value"

    .prologue
    const-wide/16 v4, 0x0

    .line 95
    if-nez p0, :cond_0

    move-wide v2, v4

    .line 113
    :goto_0
    return-wide v2

    .line 99
    :cond_0
    const-wide/16 v2, 0x0

    .line 101
    .local v2, resultLong:J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0X"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, hexValue:Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 104
    goto :goto_0

    .line 105
    .end local v1           #hexValue:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, v4

    .line 108
    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-wide v2, v4

    .line 110
    goto :goto_0
.end method
