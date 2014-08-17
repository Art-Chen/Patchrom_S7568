.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final CONNECT:I = 0x4

.field public static final DISCONNECT:I = 0x5

.field public static final INIT:I = 0x1

.field private static final OEM_DOMESTIC_GET_ATR:I = 0x26

.field private static final OEM_DOMESTIC_GSIM_ACCESS:I = 0x27

.field private static final OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final OEM_FUNCTION_ID_DOMESTIC:I = 0x16

.field public static final POWERDOWN:I = 0x3

.field public static final POWERUP:I = 0x2

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final TRANSMIT:I = 0x6

.field private static final USE_IPC_GSIM:Z = true

.field static final mLogTag:Ljava/lang/String; = "IccPcscProvider"

.field private static scInstance:Lcom/android/internal/telephony/IccPcscProvider;


# instance fields
.field private NUM_OF_CHANNEL:I

.field private _atr:[B

.field private cardStatus:I

.field private channel:[I

.field private isInitiated:Z

.field private final scLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->NUM_OF_CHANNEL:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->scLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRIL()I
    .locals 9

    .prologue
    const/4 v5, -0x1

    const-string v6, "IccPcscProvider"

    const-string v7, "connectToRIL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .local v3, fileSize:I
    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x27

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x70

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :try_start_1
    new-array v4, v6, [B

    .local v4, response:[B
    const-string v6, "phoneext"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v6, v7, v4, v8}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .end local v4           #response:[B
    :goto_0
    return v5

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const-string v6, "IccPcscProvider"

    const-string v7, "IOException - connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v6, "IccPcscProvider"

    const-string v7, "Exception - connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disconnectFromRIL(I)I
    .locals 9
    .parameter "channel"

    .prologue
    const/4 v5, -0x1

    const-string v6, "IccPcscProvider"

    const-string v7, "disconnectFromRIL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    const/16 v3, 0x9

    .local v3, fileSize:I
    const/16 v3, 0x8

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x27

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x70

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :try_start_1
    new-array v4, v6, [B

    .local v4, response:[B
    const-string v6, "phoneext"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v6, v7, v4, v8}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .end local v4           #response:[B
    :goto_0
    return v5

    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const-string v6, "IccPcscProvider"

    const-string v7, "IO Exception - Disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private pcscPowerdown()V
    .locals 2

    .prologue
    const-string v0, "IccPcscProvider"

    const-string v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pscsPowerup()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .local v0, atrLength:I
    const-string v6, "IccPcscProvider"

    const-string v7, "pscsPowerup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v4, 0x4

    .local v4, fileSize:I
    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x26

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x106

    :try_start_1
    new-array v5, v6, [B

    .local v5, response:[B
    const-string v6, "phoneext"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v6, v7, v5, v8}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I

    const/4 v6, 0x0

    aget-byte v0, v5, v6

    const-string v6, "IccPcscProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pscsPowerup ATR:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "IccPcscProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pscsPowerup atrLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v6, v0, [B

    iput-object v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5           #response:[B
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    goto :goto_0

    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v9, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    goto :goto_0
.end method

.method private transmitToRIL(I[B[B)I
    .locals 9
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    const/4 v5, -0x1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_0
    array-length v6, p2

    add-int/lit8 v3, v6, 0x4

    .local v3, fileSize:I
    const/16 v6, 0x16

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x27

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_0

    aget-byte v6, p2, v4

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #fileSize:I
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    const-string v6, "IccPcscProvider"

    const-string v7, "IOException - transmit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return v5

    .restart local v3       #fileSize:I
    .restart local v4       #i:I
    :cond_0
    :try_start_1
    const-string v6, "phoneext"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v6, v7, p3, v8}, Lcom/android/internal/telephony/ITelephonyExt;->sendRequestToRIL([B[BI)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public connect()I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    :cond_0
    const-string v0, "IccPcscProvider"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v0

    return v0
.end method

.method public disconnect(I)I
    .locals 2
    .parameter "channel"

    .prologue
    const-string v0, "IccPcscProvider"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    return-void
.end method

.method public getATR([B)I
    .locals 3
    .parameter "atr"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v1

    .local v0, size:I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    const-string v1, "IccPcscProvider"

    const-string v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x6

    .end local v0           #size:I
    :goto_0
    return v0

    .restart local v0       #size:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public transmit(I[B[B)I
    .locals 1
    .parameter "channel"
    .parameter "command"
    .parameter "response"

    .prologue
    if-nez p2, :cond_0

    const/4 v0, -0x4

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, -0x5

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    goto :goto_0
.end method
