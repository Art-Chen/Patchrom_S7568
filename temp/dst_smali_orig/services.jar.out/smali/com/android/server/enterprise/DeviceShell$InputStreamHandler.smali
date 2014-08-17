.class Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
.super Ljava/lang/Thread;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamHandler"
.end annotation


# instance fields
.field output:Ljava/lang/StringBuffer;

.field private final sink:Z

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "sink"

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .local v0, b:Ljava/io/BufferedReader;
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->sink:Z

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->stream:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .end local v0           #b:Ljava/io/BufferedReader;
    .local v1, b:Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->output:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_6
    throw v4

    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_4

    .end local v0           #b:Ljava/io/BufferedReader;
    .restart local v1       #b:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_3

    .end local v0           #b:Ljava/io/BufferedReader;
    .restart local v1       #b:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedReader;
    .restart local v0       #b:Ljava/io/BufferedReader;
    goto :goto_0
.end method
