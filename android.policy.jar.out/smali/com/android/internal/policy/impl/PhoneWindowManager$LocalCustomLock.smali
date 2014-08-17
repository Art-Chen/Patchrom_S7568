.class Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalCustomLock"
.end annotation


# instance fields
.field private mEnd:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mStart:Ljava/lang/String;

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 6764
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6765
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mPath:Ljava/lang/String;

    .line 6766
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mStart:Ljava/lang/String;

    .line 6767
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mEnd:Ljava/lang/String;

    .line 6769
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 6775
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 6792
    const/4 v1, 0x0

    .line 6794
    .local v1, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6795
    .end local v1           #out:Ljava/io/OutputStream;
    .local v2, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 6802
    if-eqz v2, :cond_0

    .line 6803
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 6809
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 6805
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 6806
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 6808
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_0

    .line 6796
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 6802
    :goto_1
    if-eqz v1, :cond_1

    .line 6803
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 6805
    :catch_2
    move-exception v0

    .line 6806
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6798
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 6799
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6802
    if-eqz v1, :cond_1

    .line 6803
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 6805
    :catch_4
    move-exception v0

    .line 6806
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 6801
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 6802
    :goto_3
    if-eqz v1, :cond_2

    .line 6803
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 6807
    :cond_2
    :goto_4
    throw v3

    .line 6805
    :catch_5
    move-exception v0

    .line 6806
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 6801
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 6798
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 6796
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 6784
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->write(Ljava/lang/String;)V

    .line 6785
    return-void
.end method

.method public acquire(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 6778
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->acquire()V

    .line 6779
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6780
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mTimeoutRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6781
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 6788
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->mEnd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$LocalCustomLock;->write(Ljava/lang/String;)V

    .line 6789
    return-void
.end method
