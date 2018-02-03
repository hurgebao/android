.class public Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source "JDKPKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private useDEREncoding:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isUseDEREncoding()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return v0
.end method
