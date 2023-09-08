Expand-Archive -Path Post.zip -DestinationPath Post

Remove-Item -Path "ansys.motion.post_api" -Force -Recurse -ErrorAction SilentlyContinue

New-Item -ItemType Directory -Path ansys.motion.post_api
New-Item -ItemType Directory -Path ansys.motion.post_api\Resources
New-Item -ItemType Directory -Path ansys.motion.post_api\x64

Copy-Item -Path Post\Resources\DataSource.db -Destination ansys.motion.post_api\Resources
Copy-Item -Path Post\Resources\DataSourceDynamicContour.db -Destination ansys.motion.post_api\Resources
Copy-Item -Path Post\Resources\dfpre.unit.xml -Destination ansys.motion.post_api\Resources

Copy-Item -Path Post\x64\SQLite.Interop.dll -Destination ansys.motion.post_api\x64

Copy-Item -Path Post\CeeCore.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeExport.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeGeometry.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeImportCae.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeePlot2d.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeReport.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Core.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Export.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Geometry.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.ImportCae.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Plot2d.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Report.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.UnstructGrid.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Visualization.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponents.Win.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsCore_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsExport_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsGeometry_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsImportCae_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsPlot2d_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsReport_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsUnstructGrid_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsVisualization_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeetronDesktopComponentsWin_impl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeUnstructGrid.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeVisualization.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\CeeWin.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\dfpostslv.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\DynamicData.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\System.ComponentModel.Annotations.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\System.Data.SQLite.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\System.Drawing.Common.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\System.Reactive.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\tbb.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Enums.Post.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Extensions.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Localization.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Localization.Post.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.FE.BeamCrossSection.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.OutputReader.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.DataSource.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.EntityTypes.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.Geometrybuilder.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.Interfaces.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.IVisualization.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.ManagedMathLib.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.PostSlv.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.Unit.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Models.Post.VisualizationImpl.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VM.Post.API.OutputReader.dll -Destination ansys.motion.post_api
Copy-Item -Path Post\VMUtil.dll -Destination ansys.motion.post_api

Copy-Item -Path BuildScripts\conanfile.py -Destination ansys.motion.post_api

#Remove-Item -Path "Post" -Force -Recurse

#& "$env:ANSYS_CONAN_VENV_PATH\Scripts\activate.ps1"

#conan remove -f ansys.motion.post_api

#cd ansys.motion.post_api

#conan export-pkg . ansys.motion.post_api/24.1@ansys/stable -pr windows_x86_64_vs2019 -pr release -s os=Windows

#cd..

Compress-Archive -Path ansys.motion.post_api -DestinationPath ansys.motion.post_api.zip

#git clone https://tfs.ansys.com:8443/tfs/ANSYS_Development/Mechanical/_git/mechext-virtualmotion
