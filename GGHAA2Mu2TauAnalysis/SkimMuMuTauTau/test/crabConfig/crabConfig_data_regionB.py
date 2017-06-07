from CRABClient.UserUtilities import config, getUsernameFromSiteDB
config = config()

config.General.requestName = 'data_RegionBWithMassCut1'
config.General.workArea = 'crab_projects'
config.General.transferOutputs = True
config.General.transferLogs = True

config.JobType.pluginName = 'Analysis'
config.JobType.psetName = '../SkimSequence/Signal_Sequence.py'

config.Data.inputDataset = '/SingleMuon/Run2016B-23Sep2016-v3/AOD'
config.Data.inputDBS = 'global'
config.Data.splitting = 'LumiBased'
config.Data.unitsPerJob = 300
config.Data.totalUnits = 3000000
config.Data.lumiMask = '/afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions16//13TeV/Era/ReReco/Cert_272007-275376_13TeV_23Sep2016ReReco_Collisions16_JSON_eraB.txt'
config.Data.outLFNDirBase = '/store/group/phys_higgs/HiggsExo/mshi'
config.Data.publication = True
config.Data.outputDatasetTag = 'data_RegionBWithMassCut1'

config.Site.storageSite = 'T2_CH_CERN'
