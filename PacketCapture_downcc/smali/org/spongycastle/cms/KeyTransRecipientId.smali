.class public Lorg/spongycastle/cms/KeyTransRecipientId;
.super Lorg/spongycastle/cms/RecipientId;
.source "KeyTransRecipientId.java"


# instance fields
.field private baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;


# direct methods
.method private constructor <init>(Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;)V
    .locals 1
    .param p1, "baseSelector"    # Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/RecipientId;-><init>(I)V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    .line 18
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lorg/spongycastle/cms/KeyTransRecipientId;

    iget-object v1, p0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1}, Lorg/spongycastle/cms/KeyTransRecipientId;-><init>(Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 78
    instance-of v1, p1, Lorg/spongycastle/cms/KeyTransRecipientId;

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 85
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 83
    check-cast v0, Lorg/spongycastle/cms/KeyTransRecipientId;

    .line 85
    .local v0, "id":Lorg/spongycastle/cms/KeyTransRecipientId;
    iget-object v1, p0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    iget-object v2, v0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v1, v2}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v0, p1, Lorg/spongycastle/cms/KeyTransRecipientInformation;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lorg/spongycastle/cms/KeyTransRecipientInformation;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/spongycastle/cms/KeyTransRecipientInformation;->getRID()Lorg/spongycastle/cms/RecipientId;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/cert/selector/X509CertificateHolderSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
