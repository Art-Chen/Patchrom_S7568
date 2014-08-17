.class Landroid/hardware/ssp/SSPLogger;
.super Ljava/lang/Object;
.source "SSPLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ssp/SSPLogger$1;,
        Landroid/hardware/ssp/SSPLogger$Level;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "SSPLogger"

.field private static final TAG:Ljava/lang/String; = "SSP"

.field private static instance:Landroid/hardware/ssp/SSPLogger;

.field private static isCaller:Z

.field private static isConsoleLogging:Z

.field private static isFileLogging:Z

.field private static mLevel:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 253
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Landroid/hardware/ssp/SSPLogger;->isConsoleLogging:Z

    .line 255
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/ssp/SSPLogger;->isFileLogging:Z

    .line 256
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->TRACE:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0}, Landroid/hardware/ssp/SSPLogger$Level;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/ssp/SSPLogger;->mLevel:I

    .line 257
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/ssp/SSPLogger;->isConsoleLogging:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 24
    sget v0, Landroid/hardware/ssp/SSPLogger;->mLevel:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/ssp/SSPLogger;->isFileLogging:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/ssp/SSPLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Landroid/hardware/ssp/SSPLogger;->isCaller:Z

    return v0
.end method

.method protected static debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 274
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->DEBUG:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 275
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->DEBUG:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected static error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 307
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->ERROR:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 308
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->ERROR:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method protected static exception(Ljava/lang/Throwable;)V
    .locals 5
    .parameter "exMsg"

    .prologue
    .line 318
    sget-object v3, Landroid/hardware/ssp/SSPLogger$Level;->EXCEPTION:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 319
    sget-object v3, Landroid/hardware/ssp/SSPLogger$Level;->EXCEPTION:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 322
    .local v2, trace:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 323
    sget-object v3, Landroid/hardware/ssp/SSPLogger$Level;->EXCEPTION:Landroid/hardware/ssp/SSPLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 324
    sget-object v3, Landroid/hardware/ssp/SSPLogger$Level;->EXCEPTION:Landroid/hardware/ssp/SSPLogger$Level;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 328
    .local v1, ourCause:Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 329
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 331
    :cond_1
    return-void
.end method

.method private static getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "priority"
    .parameter "tag"
    .parameter "caller"
    .parameter "msg"

    .prologue
    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 351
    .local v5, utcDate:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 352
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 353
    .local v6, year:I
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 354
    .local v3, month:I
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 355
    .local v0, date:I
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 356
    .local v1, hour:I
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 357
    .local v2, min:I
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 359
    .local v4, sec:I
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    const-string v7, "[%4d-%02d-%02d %02d:%02d:%02d] [%s] [%s] %s %s"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    aput-object p0, v8, v9

    const/4 v9, 0x7

    aput-object p1, v8, v9

    const/16 v9, 0x8

    aput-object p2, v8, v9

    const/16 v9, 0x9

    aput-object p3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getInstance()Landroid/hardware/ssp/SSPLogger;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Landroid/hardware/ssp/SSPLogger;->instance:Landroid/hardware/ssp/SSPLogger;

    if-nez v0, :cond_1

    .line 239
    const-class v1, Landroid/hardware/ssp/SSPLogger;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/SSPLogger;->instance:Landroid/hardware/ssp/SSPLogger;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/hardware/ssp/SSPLogger;

    invoke-direct {v0}, Landroid/hardware/ssp/SSPLogger;-><init>()V

    sput-object v0, Landroid/hardware/ssp/SSPLogger;->instance:Landroid/hardware/ssp/SSPLogger;

    .line 243
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    sget-object v0, Landroid/hardware/ssp/SSPLogger;->instance:Landroid/hardware/ssp/SSPLogger;

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static info(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 285
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->INFO:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 286
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->INFO:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method protected static setConsoleLoggingEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 371
    sput-boolean p0, Landroid/hardware/ssp/SSPLogger;->isConsoleLogging:Z

    .line 372
    return-void
.end method

.method protected static setFileLoggingEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, check:Z
    if-eqz p0, :cond_1

    .line 384
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v1

    const-string v2, "SSPLogger"

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonProviderFileLogging;->startLogging(Ljava/lang/String;)Z

    move-result v0

    .line 391
    :goto_0
    if-eqz v0, :cond_0

    .line 392
    sput-boolean p0, Landroid/hardware/ssp/SSPLogger;->isFileLogging:Z

    .line 394
    :cond_0
    return-void

    .line 387
    :cond_1
    invoke-static {}, Landroid/hardware/ssp/DaemonProviderFileLogging;->getInstance()Landroid/hardware/ssp/DaemonProviderFileLogging;

    move-result-object v1

    const-string v2, "SSPLogger"

    invoke-virtual {v1, v2}, Landroid/hardware/ssp/DaemonProviderFileLogging;->stopLogging(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static setLogOption(IZ)V
    .locals 0
    .parameter "level"
    .parameter "enableCaller"

    .prologue
    .line 406
    sput p0, Landroid/hardware/ssp/SSPLogger;->mLevel:I

    .line 407
    sput-boolean p1, Landroid/hardware/ssp/SSPLogger;->isCaller:Z

    .line 408
    return-void
.end method

.method protected static trace()V
    .locals 2

    .prologue
    .line 263
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->TRACE:Landroid/hardware/ssp/SSPLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 264
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->TRACE:Landroid/hardware/ssp/SSPLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected static warning(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 296
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->WARN:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->consoleLogging(Ljava/lang/String;)V

    .line 297
    sget-object v0, Landroid/hardware/ssp/SSPLogger$Level;->WARN:Landroid/hardware/ssp/SSPLogger$Level;

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/SSPLogger$Level;->fileLogging(Ljava/lang/String;)V

    .line 298
    return-void
.end method
