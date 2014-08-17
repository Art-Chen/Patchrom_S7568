.class Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x4

.field static final CONTENT_APP_IDLE_OFFSET:J = 0x3a98L

.field static final EMPTY_APP_IDLE_OFFSET:J = 0x1d4c0L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x3

.field static final HIDDEN_APP_MAX_ADJ:I = 0xf

.field static HIDDEN_APP_MIN_ADJ:I = 0x0

.field static final HOME_APP_ADJ:I = 0x6

#the value of this static final field might be set in the static constructor
.field static final MAX_HIDDEN_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final MIN_HIDDEN_APPS:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

#the value of this static final field might be set in the static constructor
.field static final TOTAL_DEVICE_MEMORY:J = 0x0L

.field static final VISIBLE_APP_ADJ:I = 0x1


# instance fields
.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeHigh2GB:[J

.field private final mOomMinFreeLow:[J

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/16 v0, 0x9

    sput v0, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    .line 101
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 118
    invoke-static {}, Lcom/android/server/am/ProcessList;->has2GbMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/android/server/am/ProcessList;->MAX_HIDDEN_APPS:I

    return-void

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-array v0, v4, [I

    aput v3, v0, v3

    aput v1, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v5, v0, v1

    sget v1, Lcom/android/server/am/ProcessList;->HIDDEN_APP_MIN_ADJ:I

    aput v1, v0, v5

    const/4 v1, 0x5

    const/16 v2, 0xf

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 137
    new-array v0, v4, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 143
    new-array v0, v4, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 151
    new-array v0, v4, [J

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh2GB:[J

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 164
    sget-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 165
    invoke-direct {p0, v3, v3, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 166
    return-void

    .line 137
    :array_0
    .array-data 0x8
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x70t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 143
    :array_1
    .array-data 0x8
        0xa1t 0x8ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ct 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xf4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x72t 0x17t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x42t 0x5ft 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 151
    :array_2
    .array-data 0x8
        0x0t 0x40t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x80t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xc0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static has2GbMemory()Z
    .locals 4

    .prologue
    .line 110
    sget-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 5

    .prologue
    .line 104
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 105
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 106
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private updateOomLevels(IIZ)V
    .locals 19
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "write"

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v17, 0x12c

    sub-long v15, v15, v17

    long-to-float v0, v15

    move/from16 v16, v0

    invoke-static {}, Lcom/android/server/am/ProcessList;->has2GbMemory()Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x5dc

    :goto_0
    add-int/lit16 v15, v15, -0x12c

    int-to-float v15, v15

    div-float v14, v16, v15

    .line 185
    .local v14, scaleMem:F
    const v10, 0x25800

    .line 186
    .local v10, minSize:I
    const v8, 0xfa000

    .line 187
    .local v8, maxSize:I
    mul-int v15, p1, p2

    int-to-float v15, v15

    int-to-float v0, v10

    move/from16 v16, v0

    sub-float v15, v15, v16

    const v16, 0xd4800

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 190
    .local v13, scaleDisp:F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v2, adjString:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v9, memString:Ljava/lang/StringBuilder;
    cmpl-float v15, v14, v13

    if-lez v15, :cond_3

    move v12, v14

    .line 194
    .local v12, scale:F
    :goto_1
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_4

    const/4 v12, 0x0

    .line 197
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/server/am/ProcessList;->has2GbMemory()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh2GB:[J

    .line 198
    .local v11, oomMinFreeHigh:[J
    :goto_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v5, v15, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    aget-wide v6, v15, v5

    .line 200
    .local v6, low:J
    aget-wide v3, v11, v5

    .line 201
    .local v3, high:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    long-to-float v0, v6

    move/from16 v16, v0

    sub-long v17, v3, v6

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v15, v5

    .line 203
    if-lez v5, :cond_1

    .line 204
    const/16 v15, 0x2c

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    const/16 v15, 0x2c

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v15, v15, v5

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    const-wide/16 v17, 0x1000

    div-long v15, v15, v17

    move-wide v0, v15

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 182
    .end local v2           #adjString:Ljava/lang/StringBuilder;
    .end local v3           #high:J
    .end local v5           #i:I
    .end local v6           #low:J
    .end local v8           #maxSize:I
    .end local v9           #memString:Ljava/lang/StringBuilder;
    .end local v10           #minSize:I
    .end local v11           #oomMinFreeHigh:[J
    .end local v12           #scale:F
    .end local v13           #scaleDisp:F
    .end local v14           #scaleMem:F
    :cond_2
    const/16 v15, 0x2bc

    goto/16 :goto_0

    .restart local v2       #adjString:Ljava/lang/StringBuilder;
    .restart local v8       #maxSize:I
    .restart local v9       #memString:Ljava/lang/StringBuilder;
    .restart local v10       #minSize:I
    .restart local v13       #scaleDisp:F
    .restart local v14       #scaleMem:F
    :cond_3
    move v12, v13

    .line 193
    goto :goto_1

    .line 195
    .restart local v12       #scale:F
    :cond_4
    const/high16 v15, 0x3f80

    cmpl-float v15, v12, v15

    if-lez v15, :cond_0

    const/high16 v12, 0x3f80

    goto :goto_2

    .line 197
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    goto :goto_3

    .line 212
    .restart local v5       #i:I
    .restart local v11       #oomMinFreeHigh:[J
    :cond_6
    if-eqz p3, :cond_7

    .line 213
    const-string v15, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v15, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_7
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "data"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 237
    if-eqz v2, :cond_2

    .line 239
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 244
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 240
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 241
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    if-eqz v1, :cond_0

    .line 239
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 240
    :catch_2
    move-exception v3

    goto :goto_0

    .line 237
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 239
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 241
    :cond_1
    :goto_3
    throw v3

    .line 240
    :catch_3
    move-exception v4

    goto :goto_3

    .line 237
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 234
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .parameter "wm"

    .prologue
    const/4 v3, 0x1

    .line 169
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 171
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(Landroid/graphics/Point;)V

    .line 172
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 173
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 174
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 177
    .end local v0           #p:Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method getMemLevel(I)J
    .locals 5
    .parameter "adjustment"

    .prologue
    const-wide/16 v3, 0x400

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 226
    :goto_1
    return-wide v1

    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method
