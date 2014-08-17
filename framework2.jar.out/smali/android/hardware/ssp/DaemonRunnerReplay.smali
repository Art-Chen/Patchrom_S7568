.class Landroid/hardware/ssp/DaemonRunnerReplay;
.super Landroid/hardware/ssp/ADaemonRunner;
.source "DaemonRunnerReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/DaemonRunnerReplay$1;,
        Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;
    }
.end annotation


# static fields
.field private static final REPLAY_TIME:I = 0x3e8

.field private static final RUNNER_NAME:Ljava/lang/String;


# instance fields
.field private mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

.field private mbufferReader:Ljava/io/BufferedReader;

.field private mfileReader:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->REPLAY:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerReplay;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunner;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$100(Landroid/hardware/ssp/DaemonRunnerReplay;)Ljava/io/BufferedReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/ssp/DaemonRunnerReplay;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonRunnerReplay;->updateContext(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private extractLocationContext(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/ssp/DaemonContexts$SSPLocation;
    .locals 7
    .parameter "line"
    .parameter "service"

    .prologue
    const/16 v6, 0x2c

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 256
    .local v2, startIdx:I
    const/4 v1, 0x0

    .line 258
    .local v1, endIdx:I
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;-><init>()V

    .line 260
    .local v0, context:Landroid/hardware/ssp/DaemonContexts$SSPLocation;
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 261
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->setSysTime(J)V

    .line 264
    add-int/lit8 v2, v1, 0x1

    .line 265
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 266
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->timeStamp:J

    .line 269
    add-int/lit8 v2, v1, 0x1

    .line 270
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 271
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->latitude:D

    .line 274
    add-int/lit8 v2, v1, 0x1

    .line 275
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 276
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->longitude:D

    .line 279
    add-int/lit8 v2, v1, 0x1

    .line 280
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 281
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->altitude:D

    .line 284
    add-int/lit8 v2, v1, 0x1

    .line 285
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 286
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->accuracy:F

    .line 289
    add-int/lit8 v2, v1, 0x1

    .line 290
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 291
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->heading:F

    .line 294
    add-int/lit8 v2, v1, 0x1

    .line 295
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 296
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->speed:F

    .line 299
    add-int/lit8 v2, v1, 0x1

    .line 300
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 301
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPLocation;->valid:Z

    .line 304
    return-object v0
.end method

.method private extractMovingContext(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/ssp/DaemonContexts$SSPMoving;
    .locals 7
    .parameter "line"
    .parameter "service"

    .prologue
    const/16 v6, 0x2c

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 319
    .local v2, startIdx:I
    const/4 v1, 0x0

    .line 321
    .local v1, endIdx:I
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMoving;-><init>()V

    .line 323
    .local v0, context:Landroid/hardware/ssp/DaemonContexts$SSPMoving;
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 324
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->move:I

    .line 327
    add-int/lit8 v2, v1, 0x1

    .line 328
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 329
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->transMethod:I

    .line 332
    add-int/lit8 v2, v1, 0x1

    .line 333
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 334
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{Space}"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Landroid/hardware/ssp/DaemonContexts$SSPMoving;->mode:I

    .line 337
    return-object v0
.end method

.method private updateContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "line"
    .parameter "service"

    .prologue
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->LOCATION:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonRunnerReplay;->extractLocationContext(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/ssp/DaemonContexts$SSPLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderReplay;->updateLocationContext(Landroid/hardware/ssp/DaemonContexts$SSPLocation;)V

    goto :goto_0

    .line 237
    :cond_2
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPServices;->MOVING:Landroid/hardware/ssp/DaemonConstants$SSPServices;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPServices;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderReplay;->getInstance()Landroid/hardware/ssp/DaemonProviderReplay;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Landroid/hardware/ssp/DaemonRunnerReplay;->extractMovingContext(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/ssp/DaemonContexts$SSPMoving;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonProviderReplay;->updateMovingContext(Landroid/hardware/ssp/DaemonContexts$SSPMoving;)V

    goto :goto_0
.end method


# virtual methods
.method public clearVar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->stopThread()V

    .line 144
    iput-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    .line 146
    :cond_0
    new-instance v0, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    invoke-direct {v0, p0, v1}, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;-><init>(Landroid/hardware/ssp/DaemonRunnerReplay;Landroid/hardware/ssp/DaemonRunnerReplay$1;)V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    .line 147
    return-void
.end method

.method protected disable()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->stopThread()V

    .line 90
    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;

    .line 95
    :cond_0
    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected enable()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mFileReadThread:Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonRunnerReplay$FileReadThread;->start()V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerReplay;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public pauseRunner()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public prepareRunner()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public resumeRunner()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected setFilePath(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;

    .line 158
    new-instance v1, Ljava/io/BufferedReader;

    iget-object v2, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mfileReader:Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Landroid/hardware/ssp/DaemonRunnerReplay;->mbufferReader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerReplay;->enable()V

    .line 164
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunner;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerReplay;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 113
    return-void
.end method
