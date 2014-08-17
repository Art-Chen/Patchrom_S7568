.class public Lcom/android/server/enterprise/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "FontDir"
    .parameter "folderName"

    .prologue
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, newDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .local v4, tmp:[Ljava/lang/String;
    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v2           #i:I
    .local v0, bRet:Z
    :goto_1
    return v0

    .end local v0           #bRet:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #bRet:Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 4
    .parameter "fontPath"

    .prologue
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .local v1, run:Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .local v0, myProcess:Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #myProcess:Ljava/lang/Process;
    .end local v1           #run:Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    move-object/from16 v12, p2

    .local v12, myInputStream:Ljava/io/InputStream;
    move-object/from16 v11, p1

    .local v11, myDirectory:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, directoryName:Ljava/lang/String;
    move-object/from16 v10, p3

    .local v10, myDestination:Ljava/lang/String;
    const-string v1, ""

    .local v1, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, dest:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v14, 0x400

    new-array v2, v14, [B

    .local v2, b:[B
    const/4 v13, 0x0

    .local v13, read:I
    :goto_0
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v15, 0x0

    invoke-virtual {v14, v2, v15, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #b:[B
    .end local v3           #dest:Ljava/io/File;
    .end local v13           #read:I
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .local v8, length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v7       #file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .restart local v8       #length:J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v13       #read:I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v12, :cond_6

    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_6
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_7
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .local v5, e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : bos.close() error"

    .end local v2           #b:[B
    .end local v3           #dest:Ljava/io/File;
    .end local v13           #read:I
    :goto_6
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_8

    :try_start_9
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    :goto_7
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_9
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_a
    :goto_9
    throw v14

    :catch_2
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #ex:Ljava/lang/Exception;
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #length:J
    :catch_5
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v5           #e:Ljava/io/IOException;
    :catch_7
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : bos.close() error"

    goto :goto_6

    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v8           #length:J
    .restart local v2       #b:[B
    .restart local v3       #dest:Ljava/io/File;
    .restart local v13       #read:I
    :catch_8
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v5           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 20
    .parameter "directory"
    .parameter "is"
    .parameter "destination"

    .prologue
    const/4 v8, 0x0

    .local v8, fOut:Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .local v15, osw:Ljava/io/OutputStreamWriter;
    const/4 v3, 0x0

    .local v3, bos:Ljava/io/BufferedOutputStream;
    move-object/from16 v14, p2

    .local v14, myInputStream:Ljava/io/InputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, dest:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .local v9, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .local v4, bos:Ljava/io/BufferedOutputStream;
    const/16 v17, 0x400

    :try_start_2
    move/from16 v0, v17

    new-array v2, v0, [B

    .local v2, b:[B
    const/16 v16, 0x0

    .local v16, read:I
    :goto_0
    invoke-virtual {v14, v2}, Ljava/io/InputStream;->read([B)I

    move-result v16

    if-lez v16, :cond_5

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v2, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v2           #b:[B
    .end local v16           #read:I
    :catch_0
    move-exception v7

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v5           #dest:Ljava/io/File;
    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .local v7, ex:Ljava/lang/Exception;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .local v12, length:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_1

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v7           #ex:Ljava/lang/Exception;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    :cond_3
    :goto_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .restart local v12       #length:J
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    .restart local v2       #b:[B
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v14, :cond_6

    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_8
    :goto_7
    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #b:[B
    .end local v5           #dest:Ljava/io/File;
    .end local v16           #read:I
    :catchall_0
    move-exception v17

    :goto_8
    if-eqz v14, :cond_9

    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_9
    :goto_9
    if-eqz v8, :cond_a

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :cond_b
    :goto_b
    throw v17

    :catch_1
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : fOut.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v18, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v19, "copyFontFile : bos.close() error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v6           #e:Ljava/io/IOException;
    .restart local v7       #ex:Ljava/lang/Exception;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #length:J
    :catch_4
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #length:J
    .restart local v2       #b:[B
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    .restart local v16       #read:I
    :catch_7
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v6           #e:Ljava/io/IOException;
    :catch_8
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v6           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v2           #b:[B
    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v16           #read:I
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #bos:Ljava/io/BufferedOutputStream;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v3, v4

    .end local v4           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #bos:Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v5           #dest:Ljava/io/File;
    :catch_a
    move-exception v7

    goto/16 :goto_1

    .end local v8           #fOut:Ljava/io/FileOutputStream;
    .restart local v5       #dest:Ljava/io/File;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v7

    move-object v8, v9

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .restart local v8       #fOut:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 13
    .parameter "context"
    .parameter "fontName"

    .prologue
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, settingContext:Landroid/content/Context;
    :try_start_0
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_0

    const-string v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .local v6, newFontDir:Ljava/io/File;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir object created : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, fontFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .local v10, tmp:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_2

    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #fontFile:Ljava/io/File;
    .end local v2           #i:I
    .end local v6           #newFontDir:Ljava/io/File;
    .end local v10           #tmp:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    :goto_2
    return-object v1

    .restart local v1       #fontFile:Ljava/io/File;
    .restart local v2       #i:I
    .restart local v6       #newFontDir:Ljava/io/File;
    .restart local v10       #tmp:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .local v7, run:Ljava/lang/Runtime;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 777 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, s:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .local v5, myProcess:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v5           #myProcess:Ljava/lang/Process;
    .end local v7           #run:Ljava/lang/Runtime;
    .end local v8           #s:Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, ioEx:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #ioEx:Ljava/io/IOException;
    :cond_3
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v3

    .local v3, iEx:Ljava/lang/InterruptedException;
    sget-object v11, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "filename"
    .parameter "directory"

    .prologue
    const-string v0, ""

    .local v0, absolutePath:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, dest:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v1           #dest:Ljava/io/File;
    :cond_1
    :goto_1
    const-string v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    .local v3, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    .end local v3           #ex:Ljava/lang/Exception;
    :goto_3
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_5
    throw v4

    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #dest:Ljava/io/File;
    :catch_5
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/FontWriter;->TAG:Ljava/lang/String;

    const-string v5, "writeLoc : fOut.close() error"

    goto :goto_3
.end method
