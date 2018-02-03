.class public Lorg/spongycastle/cms/SignerId;
.super Ljava/lang/Object;
.source "SignerId.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;


# direct methods
.method private constructor <init>(Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;)V
    .locals 0
    .param p1, "baseSelector"    # Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/spongycastle/cms/SignerId;

    iget-object v1, p0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/SignerId;-><init>(Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v1, p1, Lorg/spongycastle/cms/SignerId;

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 85
    check-cast v0, Lorg/spongycastle/cms/SignerId;

    .line 87
    .local v0, "id":Lorg/spongycastle/cms/SignerId;
    iget-object v1, p0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v2, v0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v1, v2}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    instance-of v0, p1, Lorg/spongycastle/cms/SignerInformation;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lorg/spongycastle/cms/SignerInformation;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/cms/SignerInformation;->getSID()Lorg/spongycastle/cms/SignerId;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/cms/SignerId;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 97
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/SignerId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
