.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field anrA:Ljava/lang/String;

.field anrB:Ljava/lang/String;

.field anrC:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field sne:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "anrA"
    .parameter "anrB"
    .parameter "anrC"
    .parameter "sne"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    const/16 v2, 0xb

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 11
    .parameter "recordSize"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v0, 0x0

    .local v0, adnString:[B
    add-int/lit8 v4, p1, -0xe

    .local v4, footerOffset:I
    const/4 v3, 0x0

    .local v3, cmpResult:Z
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Empty alpha tag or number"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p1, [B

    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, p1, :cond_9

    aput-byte v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5           #i:I
    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Empty dialing number"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v0

    :goto_2
    return-object v6

    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_4

    const-string v7, "GSM"

    const-string v8, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v4, :cond_5

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[buildAdnString] Max length of tag is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-array v0, p1, [B

    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, p1, :cond_6

    aput-byte v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, bcdNumber:[B
    add-int/lit8 v6, v4, 0x1

    array-length v8, v1

    invoke-static {v1, v7, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v4, 0x0

    array-length v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v4, 0xc

    aput-byte v10, v0, v6

    add-int/lit8 v6, v4, 0xd

    aput-byte v10, v0, v6

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    move-object v6, v0

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, byteTag:[B
    array-length v6, v2

    invoke-static {v2, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v1           #bcdNumber:[B
    .end local v2           #byteTag:[B
    :cond_9
    move-object v6, v0

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrA()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrB()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public getSne()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrAEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnrBEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnrCEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnrC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAnrEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 3
    .parameter "adn"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isNumberEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAnrAEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAnrBEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isAnrCEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isSneEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNumberEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSneEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getSne()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anrC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
