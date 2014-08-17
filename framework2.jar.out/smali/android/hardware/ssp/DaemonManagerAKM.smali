.class Landroid/hardware/ssp/DaemonManagerAKM;
.super Ljava/lang/Object;
.source "DaemonManagerAKM.java"


# static fields
.field private static final SETTING_FILE_NAME:Ljava/lang/String; = "/data/misc/akmd_set.txt"

.field private static volatile instance:Landroid/hardware/ssp/DaemonManagerAKM;


# instance fields
.field private mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInstance()Landroid/hardware/ssp/DaemonManagerAKM;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Landroid/hardware/ssp/DaemonManagerAKM;->instance:Landroid/hardware/ssp/DaemonManagerAKM;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Landroid/hardware/ssp/DaemonManagerAKM;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Landroid/hardware/ssp/DaemonManagerAKM;->instance:Landroid/hardware/ssp/DaemonManagerAKM;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/hardware/ssp/DaemonManagerAKM;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonManagerAKM;-><init>()V

    sput-object v0, Landroid/hardware/ssp/DaemonManagerAKM;->instance:Landroid/hardware/ssp/DaemonManagerAKM;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Landroid/hardware/ssp/DaemonManagerAKM;->instance:Landroid/hardware/ssp/DaemonManagerAKM;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadIntValue(Ljava/lang/String;)I
    .locals 6
    .parameter "lpKeyName"

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 105
    .local v3, val:I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/akmd_set.txt"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 109
    .local v2, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ssp/ConvertUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_1
    return v3

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 122
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private saveIntValue(Ljava/lang/String;I)V
    .locals 10
    .parameter "lpKeyName"
    .parameter "value"

    .prologue
    .line 165
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/akmd_set.txt"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 167
    .local v5, readBr:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 168
    .local v3, line:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v4, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 190
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #readBr:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    .line 195
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 173
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #readBr:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 175
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/data/misc/akmd_set.txt"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 177
    .local v7, writeBr:Ljava/io/BufferedWriter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 180
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, l:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #l:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 185
    .restart local v2       #l:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    .end local v2           #l:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 192
    .end local v1           #i:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #readBr:Ljava/io/BufferedReader;
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #writeBr:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected finalizeAKMManager()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    .line 67
    return-void
.end method

.method protected getOrientation()Landroid/hardware/ssp/DaemonNonContextOrientation;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    return-object v0
.end method

.method protected initializeAKMManager()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonNonContextOrientation;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    .line 60
    return-void
.end method

.method protected loadAKMParameters()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HSUC_HDST_FORM0"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHdst(I)V

    .line 75
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HSUC_HO_FORM0.x"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoX(I)V

    .line 76
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HSUC_HO_FORM0.y"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoY(I)V

    .line 77
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HSUC_HO_FORM0.z"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHoZ(I)V

    .line 79
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HFLUCV_HREF_FORM0.x"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefX(I)V

    .line 80
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HFLUCV_HREF_FORM0.y"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefY(I)V

    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    const-string v1, "HFLUCV_HREF_FORM0.z"

    invoke-direct {p0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->loadIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->setHrefZ(I)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHdst()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoZ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefZ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected saveAKMParameters()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "HSUC_HDST_FORM0"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHdst()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 135
    const-string v0, "HSUC_HO_FORM0.x"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoX()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 136
    const-string v0, "HSUC_HO_FORM0.y"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 137
    const-string v0, "HSUC_HO_FORM0.z"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoZ()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 139
    const-string v0, "HFLUCV_HREF_FORM0.x"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefX()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 140
    const-string v0, "HFLUCV_HREF_FORM0.y"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 141
    const-string v0, "HFLUCV_HREF_FORM0.z"

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefZ()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/ssp/DaemonManagerAKM;->saveIntValue(Ljava/lang/String;I)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDST = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHdst()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HO.z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHoZ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HREF.z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonNonContextOrientation;->getHrefZ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected setOrientation(Landroid/hardware/ssp/DaemonNonContextOrientation;)V
    .locals 0
    .parameter "ori"

    .prologue
    .line 213
    iput-object p1, p0, Landroid/hardware/ssp/DaemonManagerAKM;->mOrientation:Landroid/hardware/ssp/DaemonNonContextOrientation;

    .line 214
    return-void
.end method
