describe "Formats - Vintage" do
  include_context "db"

  it "vintage" do
    assert_block_composition "vintage", "xln", ["lea", "leb", "2ed", "arn", "ced", "cei", "pdrc", "atq", "3ed", "leg", "drk", "fem", "plgm", "4ed", "ice", "chr", "hml", "all", "rqs", "mir", "mgb", "itp", "vis", "5ed", "ppod", "por", "wth", "tmp", "sth", "p02", "exo", "palp", "usg", "ath", "ulg", "6ed", "ptk", "uds", "s99", "pwor", "pwos", "mmq", "brb", "pelp", "nem", "s00", "pcy", "btd", "inv", "pls", "7ed", "apc", "ody", "dkm", "tor", "jud", "ons", "lgn", "scg", "8ed", "mrd", "dst", "5dn", "chk", "bok", "sok", "9ed", "rav", "p2hg", "gpt", "pcmp", "dis", "cst", "csp", "tsb", "tsp", "plc", "pgpx", "fut", "10e", "psum", "me1", "lrw", "dd1", "mor", "plpa", "p15a", "shm", "eve", "drb", "me2", "ala", "dd2", "con", "ddc", "arb", "m10", "v09", "hop", "me3", "zen", "ddd", "h09", "wwk", "dde", "roe", "dpa", "arc", "m11", "v10", "ddf", "som", "pd2", "me4", "mbs", "ddg", "nph", "cmd", "m12", "v11", "ddh", "isd", "pd3", "dka", "ddi", "avr", "pc2", "m13", "v12", "ddj", "rtr", "cma", "gtc", "ddk", "dgm", "mma", "m14", "v13", "ddl", "ths", "c13", "bng", "ddm", "jou", "md1", "cns", "vma", "m15", "cp1", "cp2", "cp3", "v14", "ddn", "ktk", "c14", "evg", "dvd", "gvl", "jvc", "ugin", "frf", "ddo", "dtk", "tpr", "mm2", "ori", "v15", "ddp", "bfz", "exp", "c15", "ogw", "ddq", "soi", "w16", "ema", "emn", "v16", "cn2", "ddr", "kld", "mps", "c16", "pca", "aer", "mm3", "dds", "w17", "akh", "mp2", "cma", "e01", "hou", "c17", "xln", "phpr"],
      "Amulet of Quoz" => "banned",
      "Ancestral Recall" => "restricted",
      "Balance" => "restricted",
      "Black Lotus" => "restricted",
      "Brainstorm" => "restricted",
      "Bronze Tablet" => "banned",
      "Chalice of the Void" => "restricted",
      "Channel" => "restricted",
      "Chaos Orb" => "banned",
      "Contract from Below" => "banned",
      "Darkpact" => "banned",
      "Demonic Attorney" => "banned",
      "Demonic Consultation" => "restricted",
      "Demonic Tutor" => "restricted",
      "Dig Through Time" => "restricted",
      "Falling Star" => "banned",
      "Fastbond" => "restricted",
      "Flash" => "restricted",
      "Gitaxian Probe" => "restricted",
      "Gush" => "restricted",
      "Imperial Seal" => "restricted",
      "Jeweled Bird" => "banned",
      "Library of Alexandria" => "restricted",
      "Lion's Eye Diamond" => "restricted",
      "Lodestone Golem" => "restricted",
      "Lotus Petal" => "restricted",
      "Mana Crypt" => "restricted",
      "Mana Vault" => "restricted",
      "Memory Jar" => "restricted",
      "Merchant Scroll" => "restricted",
      "Mind's Desire" => "restricted",
      "Monastery Mentor" => "restricted",
      "Mox Emerald" => "restricted",
      "Mox Jet" => "restricted",
      "Mox Pearl" => "restricted",
      "Mox Ruby" => "restricted",
      "Mox Sapphire" => "restricted",
      "Mystical Tutor" => "restricted",
      "Necropotence" => "restricted",
      "Ponder" => "restricted",
      "Rebirth" => "banned",
      "Shahrazad" => "banned",
      "Sol Ring" => "restricted",
      "Strip Mine" => "restricted",
      "Tempest Efreet" => "banned",
      "Thorn of Amethyst" => "restricted",
      "Time Vault" => "restricted",
      "Time Walk" => "restricted",
      "Timetwister" => "restricted",
      "Timmerian Fiends" => "banned",
      "Tinker" => "restricted",
      "Tolarian Academy" => "restricted",
      "Treasure Cruise" => "restricted",
      "Trinisphere" => "restricted",
      "Vampiric Tutor" => "restricted",
      "Wheel of Fortune" => "restricted",
      "Windfall" => "restricted",
      "Yawgmoth's Will" => "restricted"

    assert_legality "vintage", Date.parse("2005.1.1"), "Zodiac Dog", nil
    assert_legality "vintage", Date.parse("2006.1.1"), "Zodiac Dog", "legal"
  end
end
