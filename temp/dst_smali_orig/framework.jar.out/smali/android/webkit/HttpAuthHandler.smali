.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    return-void
.end method

.method public suppressDialog()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
