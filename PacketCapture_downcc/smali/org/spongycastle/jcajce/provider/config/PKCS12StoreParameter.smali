.class public Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;
.super Ljava/lang/Object;
.source "PKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final forDEREncoding:Z

.field private final out:Ljava/io/OutputStream;

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "forDEREncoding"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    .line 33
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 34
    iput-boolean p3, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->forDEREncoding:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public isForDEREncoding()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/config/PKCS12StoreParameter;->forDEREncoding:Z

    return v0
.end method
